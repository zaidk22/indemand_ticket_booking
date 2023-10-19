part of 'event_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
   

  const factory EventsEvent.getLatestEvents(List<LatestEventsModel> events) = _GetLatestEvents;
    const factory EventsEvent.getPopularEvents(List<PopularEventsModel> events) = _GetPopularEvents;
    const factory EventsEvent.getEventDetails({required int id}) = _GetDetailedEvent;
    const factory EventsEvent.getMyTickets(List<PopularEventsModel> tickets) = _GetMyTickets;
    const factory EventsEvent.getPopularLocations(List<PopularEventsModel> events ) = _GetPopularLocations;
    

}
