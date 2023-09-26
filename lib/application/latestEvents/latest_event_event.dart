part of 'latest_event_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
   

  const factory EventsEvent.getLatestEvents(List<LatestEventsModel> events) = _GetLatestEvents;
    const factory EventsEvent.getPopularEvents(List<PopularEventsModel> events) = _GetPopularEvents;

}
