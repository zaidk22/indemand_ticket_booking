
import 'package:dartz/dartz.dart';
import 'package:indemand_ticket_booking/domain/latest_events/events_error.dart';
import 'package:indemand_ticket_booking/domain/latest_events/latest_event_model.dart';
import 'package:indemand_ticket_booking/domain/latest_events/popular_events_model.dart';

abstract class IEventsFacade{
    Future<Either<EventsFailure,List<LatestEventsModel>>> getEventList();

    Future<Either<EventsFailure,List<PopularEventsModel>>> getPopularEvents();
}