import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:indemand_ticket_booking/domain/events/i_events_facade.dart';
import 'package:indemand_ticket_booking/domain/events/latest_event_model.dart';
import 'package:indemand_ticket_booking/domain/events/popular_events_model.dart';

import 'package:indemand_ticket_booking/infrastructure/events/events_facade.dart';
import 'package:injectable/injectable.dart';

part 'event_event.dart';
part 'event_state.dart';
part 'event_bloc.freezed.dart';

@injectable
class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final IEventsFacade _latestEventFacade;
  EventsBloc(this._latestEventFacade) : super(EventsState.initial()) {
    on<_GetLatestEvents>((event, emit) async {
      emit.call(state.copyWith(isLoading: true, isShimmerEnable: true));
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
      emit.call(state.copyWith(isLoading: true, isShimmerEnable: true));
      final res = await _latestEventFacade.getPopularEvents();

      emit.call(
        res.fold(
          (l) => state.copyWith(
            isLoading: false,
          ),
          (r) => state.copyWith(
            isLoading: false,
            popularEventList: r,
          ),
        ),
      );
    });

/***
 * get detailed event
 */
    on<_GetDetailedEvent>((event, emit) async {
      emit.call(state.copyWith(isLoading: true, isShimmerEnable: true));
         final res = await _latestEventFacade.getDeatiledEvent(id: event.id);

      emit.call(
        res.fold(
          (l) => state.copyWith(
            isLoading: false,
          ),
          (r) => state.copyWith(
            isLoading: false,
            eventDetails: r,
          ),
        ),
      );
    });

    /**
     * my tickets
     */
    on<_GetMyTickets>((event, emit) async {
        emit.call(state.copyWith(isLoading: true,
        isShimmerEnable: true
        ));
        final res = await _latestEventFacade.getMyTickets();

        emit.call(res.fold((l) => state.copyWith(isLoading: false,
        isShimmerEnable: false
        ), (r) => state.copyWith(isLoading: false,isShimmerEnable: false,
        myTickets: r
        )));

    });
    
    /**
     * popular locations
     */

       on<_GetPopularLocations>((event, emit) async {
        emit.call(state.copyWith(isLoading: true,
        isShimmerEnable: true
        ));
        final res = await _latestEventFacade.getMyTickets();

        emit.call(res.fold((l) => state.copyWith(isLoading: false,
        isShimmerEnable: false
        ), (r) => state.copyWith(isLoading: false,isShimmerEnable: false,
        myTickets: r
        )));

    });
  }
}
