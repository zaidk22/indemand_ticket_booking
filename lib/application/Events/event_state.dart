part of 'event_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required bool isLoading,
    required bool isShimmerEnable,
    required List<LatestEventsModel> latestEventList,
    required List<PopularEventsModel> popularEventList,
     required List<PopularEventsModel> eventDetails,
    required List<PopularEventsModel> myTickets,
    required List<PopularEventsModel> popularLocations,
  }) = _EventsState;

  factory EventsState.initial() => const EventsState(
      isLoading: false,
      isShimmerEnable: false,
      latestEventList: [],
      popularEventList: [],
      eventDetails: [],
      myTickets: [],
      popularLocations: []
      );
}
