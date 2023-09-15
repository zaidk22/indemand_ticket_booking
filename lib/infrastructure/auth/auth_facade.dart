

import 'package:dartz/dartz.dart';
import 'package:indemand_ticket_booking/domain/auth/auth_failure.dart';
import 'package:indemand_ticket_booking/domain/auth/i_auth_facade.dart';
import 'package:indemand_ticket_booking/domain/auth/sign_up_model.dart';

class AuthFacade implements IAuthFacade{
  @override
  Future<bool> checkAuthState() {
   
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required SignupModel singupInfo}) {

    throw UnimplementedError();
  }


  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required String emailAddress, required String password}) {
   
    throw UnimplementedError();
  }


  
  @override
  Future<Either<AuthFailure, Unit>> forgotPassword({required String email}) {
   
    throw UnimplementedError();
  }
  
  @override
  Future<void> signOut() {
   
    throw UnimplementedError();
  }
  
}