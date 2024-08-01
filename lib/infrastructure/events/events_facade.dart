

// ignore_for_file: non_constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:indemand_ticket_booking/domain/core/constants/api_constants.dart';
import 'package:indemand_ticket_booking/domain/events/events_error.dart';
import 'package:indemand_ticket_booking/domain/events/i_events_facade.dart';
import 'package:indemand_ticket_booking/domain/events/latest_event_model.dart';
import 'package:indemand_ticket_booking/domain/events/popular_events_model.dart';
import 'package:indemand_ticket_booking/infrastructure/core/network/rest_api/api_error_interceptors.dart';
import 'package:indemand_ticket_booking/infrastructure/core/network/rest_api/api_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEventsFacade)
//@injectable
class EventsFacade implements IEventsFacade{
  EventsFacade();
  @override
  Future<Either<EventsFailure, List<LatestEventsModel>>> getEventList() async {
   try {
      final res = await ApiService()
          .dioUnauthorizedClient
          .get(ApiConstants.latestEvents);
  
    final eventList = (res.data as List<dynamic>)
    .map((p) => LatestEventsModel.fromMap(p as Map<String, dynamic>))
    .toList();

      return right(eventList);
    } on DeadlineExceededException catch (e) {
     
      return left(
        EventsFailure.serverError(
          e.toString(),
        ),
      );
    } 
    on DioException catch (e) {
   
      return left(
        EventsFailure.serverError(
     e.toString(),
        ),
      );
    } catch (e) {
  

      return left(EventsFailure.serverError(e.toString()));
    }
  }
  
  @override
  Future<Either<EventsFailure, List<PopularEventsModel>>> getPopularEvents() async {
 try {
      final res = await ApiService()
          .dioUnauthorizedClient
          .get(ApiConstants.popularEvents);
 
    final eventList = (res.data as List<dynamic>)
    .map((p) => PopularEventsModel.fromMap(p as Map<String, dynamic>))
    .toList();

      return right(eventList);
    } on DeadlineExceededException catch (e) {
     
      return left(
        EventsFailure.serverError(
          e.toString(),
        ),
      );
    } 
    on DioException catch (e) {
   
      return left(
        EventsFailure.serverError(
     e.toString(),
        ),
      );
    } catch (e) {
  

      return left(EventsFailure.serverError(e.toString()));
    }
  }
  
  @override
  Future<Either<EventsFailure, List<PopularEventsModel>>> getDeatiledEvent({required int id}) async {
    try {
      final res = await ApiService()
          .dioUnauthorizedClient
          .get(ApiConstants.detailedEvent);
 
    final eventList = (res.data as List<dynamic>)
    .map((p) => PopularEventsModel.fromMap(p as Map<String, dynamic>))
    .toList();

      return right(eventList);
    } on DeadlineExceededException catch (e) {
     
      return left(
        EventsFailure.serverError(
          e.toString(),
        ),
      );
    } 
    on DioException catch (e) {
   
      return left(
        EventsFailure.serverError(
     e.toString(),
        ),
      );
    } catch (e) {
  

      return left(EventsFailure.serverError(e.toString()));
    }
  }
  
  @override
  Future<Either<EventsFailure, List<PopularEventsModel>>> getMyTickets() async{
   try{

final res = await ApiService()
          .dioUnauthorizedClient
          .get(ApiConstants.myTickets);
 
    final ticketList = (res.data as List<dynamic>)
    .map((p) => PopularEventsModel.fromMap(p as Map<String, dynamic>))
    .toList();

      return right(ticketList);
   }
   on DeadlineExceededException catch (e) {
     
      return left(
        EventsFailure.serverError(
          e.toString(),
        ),
      );
    } 
    on DioException catch (e) {
   
      return left(
        EventsFailure.serverError(
     e.toString(),
        ),
      );
    }

   catch(e){
    return left(EventsFailure.serverError(e.toString()));
   }
  }
  
  @override
  Future<Either<EventsFailure, List<PopularEventsModel>>> getPopularLocations() async {
   try{

final res = await ApiService()
          .dioUnauthorizedClient
          .get(ApiConstants.myTickets);
 
    final popularList = (res.data as List<dynamic>)
    .map((p) => PopularEventsModel.fromMap(p as Map<String, dynamic>))
    .toList();

      return right(popularList);
   }
   on DeadlineExceededException catch (e) {
     
      return left(
        EventsFailure.serverError(
          e.toString(),
        ),
      );
    } 
    on DioException catch (e) {
   
      return left(
        EventsFailure.serverError(
     e.toString(),
        ),
      );
    }

   catch(e){
    return left(EventsFailure.serverError(e.toString()));
   }
  }
  

  
  
}