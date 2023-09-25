part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({required int countDownTimer}) = _Initial;
  factory TimerState.initial() =>const TimerState(countDownTimer: 600);
}
