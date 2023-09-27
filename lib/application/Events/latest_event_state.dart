part of 'latest_event_bloc.dart';

@freezed
class EventsState with _$EventsState {
  const factory EventsState({
    required bool isLoading,
    required bool isShimmerEnable,
    required List<LatestEventsModel> latestEventList,
    required List<PopularEventsModel> popularEventList,
  }) = _EventsState;

  factory EventsState.initial() => const EventsState(
      isLoading: false,
      isShimmerEnable: false,
      latestEventList: [],
      popularEventList: []);
}
