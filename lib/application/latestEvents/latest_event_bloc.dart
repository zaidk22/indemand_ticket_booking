import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:indemand_ticket_booking/domain/latest_events/latest_event_model.dart';
import 'package:indemand_ticket_booking/domain/latest_events/popular_events_model.dart';
import 'package:indemand_ticket_booking/infrastructure/events/events_facade.dart';
import 'package:injectable/injectable.dart';

part 'latest_event_event.dart';
part 'latest_event_state.dart';
part 'latest_event_bloc.freezed.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventsFacade _latestEventFacade;
  EventsBloc(this._latestEventFacade) : super( EventsState.initial()) {
    on<_GetLatestEvents>((event, emit) async {
    emit.call(state.copyWith(
      isLoading: true,
      isShimmerEnable: true
    ))  ;
         final res = await _latestEventFacade.getEventList();
      emit.call(
        res.fold(
          (l) => state.copyWith(
            isLoading: false,
          ),
          (r) => state.copyWith(
            isLoading: false,
            latestEventList: r,
          ),
        ),
      );
    
    });
        on<_GetPopularEvents>((event, emit) async {
            emit.call(state.copyWith(
      isLoading: true,
      isShimmerEnable: true
    ))  ;
         final res = await _latestEventFacade.getPopularEvents();
         print(res);
      emit.call(
        res.fold(
          (l) => state.copyWith(
            isLoading: false,
          ),
          (r) => state.copyWith(
            isLoading: false,
            popularEventList : r,
          ),
        ),
      );
    });
  }
}
