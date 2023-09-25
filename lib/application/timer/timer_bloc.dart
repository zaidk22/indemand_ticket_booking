import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

@injectable
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(TimerState.initial()) {
   on<_CountDownTimer>((event, emit) async {
      emit.call(state.copyWith(
        countDownTimer: state.countDownTimer - 1,
      ));
    });
    on<_SetCounterTimer>((event, emit) async {
      emit.call(state.copyWith(
        countDownTimer: event.timeInMinutes,
      ));
    });
  }
}
