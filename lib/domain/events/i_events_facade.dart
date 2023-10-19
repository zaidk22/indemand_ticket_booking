
import 'package:dartz/dartz.dart';
import 'package:indemand_ticket_booking/domain/events/events_error.dart';
import 'package:indemand_ticket_booking/domain/events/latest_event_model.dart';
import 'package:indemand_ticket_booking/domain/events/popular_events_model.dart';


abstract class IEventsFacade{
    Future<Either<EventsFailure,List<LatestEventsModel>>> getEventList();
    Future<Either<EventsFailure,List<PopularEventsModel>>> getPopularEvents();
     Future<Either<EventsFailure,List<PopularEventsModel>>> getDeatiledEvent({required int id});
     Future<Either<EventsFailure,List<PopularEventsModel>>>  getMyTickets();
     Future <Either<EventsFailure,List<PopularEventsModel>>> getPopularLocations();
}