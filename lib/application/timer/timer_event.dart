part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {

    const factory TimerEvent.countDownTimer() = _CountDownTimer;
  const factory TimerEvent.setCounterTimer(
      {required int timeInMinutes}) = _SetCounterTimer;
}