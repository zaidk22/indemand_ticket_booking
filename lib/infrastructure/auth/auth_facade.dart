

import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:indemand_ticket_booking/domain/auth/auth_failure.dart';
import 'package:indemand_ticket_booking/domain/auth/i_auth_facade.dart';
import 'package:indemand_ticket_booking/domain/auth/sign_up_model.dart';
import 'package:indemand_ticket_booking/domain/core/constants/api_constants.dart';
import 'package:indemand_ticket_booking/domain/core/constants/storage_constants.dart';
import 'package:indemand_ticket_booking/domain/core/helper/secure_storage.dart';
import 'package:indemand_ticket_booking/infrastructure/core/network/rest_api/api_error_interceptors.dart';
import 'package:indemand_ticket_booking/infrastructure/core/network/rest_api/api_service.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade{
  @override
  Future<bool> checkAuthState() async {
final storage = Storage().secureStorage;
    final signinValue = await storage.read(key: StorageConstants.isLoggedIn);
  
    return signinValue != null && signinValue == "true" ? true : false;
  
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required SignupModel singupInfo}) async {
    
    try{
      final response = await ApiService().dioUnauthorizedClient
      .post(ApiConstants.signUp,data: singupInfo.toMap());
      return right(unit);

    }
    on DeadlineExceededException catch (e) {
      return left(
        AuthFailure.serverError(
          e.toString(),
        ),
      );
    } on DioException catch (e) {
      
      if (e.response != null) {
      
      }

      return left(
        AuthFailure.serverError(
          e.response!.data['errors'] != null
              ? e.response!.data['errors'][0]["message"].toString()
              : e.toString(),
        ),
      );
    } 
    catch(e){
     return left(AuthFailure.serverError(e.toString()));
    }
  
  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required String emailAddress, required String password})async {
   try {
      final res = await ApiService()
          .dioUnauthorizedClient
          .post(ApiConstants.signIn, data: {
        "email": emailAddress,
        "password": password,
      });

      
      final storage = Storage().secureStorage;
      await storage.write(key: StorageConstants.isLoggedIn, value: "true");
      await storage.write(
        key: StorageConstants.accessKey,
        value: res.data['access_token'].toString(),
      );

      return right(unit);
    } on DeadlineExceededException catch (e) {
      return left(
        AuthFailure.serverError(
          e.toString(),
        ),
      );
    } on DioException catch (e) {
      
      if (e.response != null) {
      
      }

      return left(
        AuthFailure.serverError(
          e.response!.data['errors'] != null
              ? e.response!.data['errors'][0]["message"].toString()
              : e.toString(),
        ),
      );
    } catch (e) {
      

      return left(AuthFailure.serverError(e.toString()));
    }
  }


  
  @override
  Future<Either<AuthFailure, Unit>> forgotPassword({required String email}) async{
 try {
      final res = await ApiService()
          .dioUnauthorizedClient
          .post(ApiConstants.forgotPassword, data: {
        "email": email,
      });

 

      return right(unit);
    } on DeadlineExceededException catch (e) {
      return left(
        AuthFailure.serverError(
          e.toString(),
        ),
      );
    } on DioException catch (e) {
      
      if (e.response != null) {
       
      }

      return left(
        AuthFailure.serverError(
          e.response != null
              ? e.response!.data['errors'][0]["message"].toString()
              : e.toString(),
        ),
      );
    } catch (e) {


      return left(AuthFailure.serverError(e.toString()));
    }
  
  }
  
  @override
  Future<void> signOut() async {
       final storage = Storage().secureStorage;
    await storage.write(key: StorageConstants.isLoggedIn, value: "false");
    await storage.write(key: StorageConstants.accessKey, value: "");
  
  }
  
}