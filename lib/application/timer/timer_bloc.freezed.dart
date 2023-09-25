// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countDownTimer,
    required TResult Function(int timeInMinutes) setCounterTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countDownTimer,
    TResult? Function(int timeInMinutes)? setCounterTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countDownTimer,
    TResult Function(int timeInMinutes)? setCounterTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDownTimer value) countDownTimer,
    required TResult Function(_SetCounterTimer value) setCounterTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDownTimer value)? countDownTimer,
    TResult? Function(_SetCounterTimer value)? setCounterTimer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDownTimer value)? countDownTimer,
    TResult Function(_SetCounterTimer value)? setCounterTimer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CountDownTimerCopyWith<$Res> {
  factory _$$_CountDownTimerCopyWith(
          _$_CountDownTimer value, $Res Function(_$_CountDownTimer) then) =
      __$$_CountDownTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CountDownTimerCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_CountDownTimer>
    implements _$$_CountDownTimerCopyWith<$Res> {
  __$$_CountDownTimerCopyWithImpl(
      _$_CountDownTimer _value, $Res Function(_$_CountDownTimer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CountDownTimer implements _CountDownTimer {
  const _$_CountDownTimer();

  @override
  String toString() {
    return 'TimerEvent.countDownTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CountDownTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countDownTimer,
    required TResult Function(int timeInMinutes) setCounterTimer,
  }) {
    return countDownTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countDownTimer,
    TResult? Function(int timeInMinutes)? setCounterTimer,
  }) {
    return countDownTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countDownTimer,
    TResult Function(int timeInMinutes)? setCounterTimer,
    required TResult orElse(),
  }) {
    if (countDownTimer != null) {
      return countDownTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDownTimer value) countDownTimer,
    required TResult Function(_SetCounterTimer value) setCounterTimer,
  }) {
    return countDownTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDownTimer value)? countDownTimer,
    TResult? Function(_SetCounterTimer value)? setCounterTimer,
  }) {
    return countDownTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDownTimer value)? countDownTimer,
    TResult Function(_SetCounterTimer value)? setCounterTimer,
    required TResult orElse(),
  }) {
    if (countDownTimer != null) {
      return countDownTimer(this);
    }
    return orElse();
  }
}

abstract class _CountDownTimer implements TimerEvent {
  const factory _CountDownTimer() = _$_CountDownTimer;
}

/// @nodoc
abstract class _$$_SetCounterTimerCopyWith<$Res> {
  factory _$$_SetCounterTimerCopyWith(
          _$_SetCounterTimer value, $Res Function(_$_SetCounterTimer) then) =
      __$$_SetCounterTimerCopyWithImpl<$Res>;
  @useResult
  $Res call({int timeInMinutes});
}

/// @nodoc
class __$$_SetCounterTimerCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$_SetCounterTimer>
    implements _$$_SetCounterTimerCopyWith<$Res> {
  __$$_SetCounterTimerCopyWithImpl(
      _$_SetCounterTimer _value, $Res Function(_$_SetCounterTimer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeInMinutes = null,
  }) {
    return _then(_$_SetCounterTimer(
      timeInMinutes: null == timeInMinutes
          ? _value.timeInMinutes
          : timeInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetCounterTimer implements _SetCounterTimer {
  const _$_SetCounterTimer({required this.timeInMinutes});

  @override
  final int timeInMinutes;

  @override
  String toString() {
    return 'TimerEvent.setCounterTimer(timeInMinutes: $timeInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetCounterTimer &&
            (identical(other.timeInMinutes, timeInMinutes) ||
                other.timeInMinutes == timeInMinutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeInMinutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetCounterTimerCopyWith<_$_SetCounterTimer> get copyWith =>
      __$$_SetCounterTimerCopyWithImpl<_$_SetCounterTimer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() countDownTimer,
    required TResult Function(int timeInMinutes) setCounterTimer,
  }) {
    return setCounterTimer(timeInMinutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? countDownTimer,
    TResult? Function(int timeInMinutes)? setCounterTimer,
  }) {
    return setCounterTimer?.call(timeInMinutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? countDownTimer,
    TResult Function(int timeInMinutes)? setCounterTimer,
    required TResult orElse(),
  }) {
    if (setCounterTimer != null) {
      return setCounterTimer(timeInMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountDownTimer value) countDownTimer,
    required TResult Function(_SetCounterTimer value) setCounterTimer,
  }) {
    return setCounterTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountDownTimer value)? countDownTimer,
    TResult? Function(_SetCounterTimer value)? setCounterTimer,
  }) {
    return setCounterTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountDownTimer value)? countDownTimer,
    TResult Function(_SetCounterTimer value)? setCounterTimer,
    required TResult orElse(),
  }) {
    if (setCounterTimer != null) {
      return setCounterTimer(this);
    }
    return orElse();
  }
}

abstract class _SetCounterTimer implements TimerEvent {
  const factory _SetCounterTimer({required final int timeInMinutes}) =
      _$_SetCounterTimer;

  int get timeInMinutes;
  @JsonKey(ignore: true)
  _$$_SetCounterTimerCopyWith<_$_SetCounterTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  int get countDownTimer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call({int countDownTimer});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countDownTimer = null,
  }) {
    return _then(_value.copyWith(
      countDownTimer: null == countDownTimer
          ? _value.countDownTimer
          : countDownTimer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int countDownTimer});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countDownTimer = null,
  }) {
    return _then(_$_Initial(
      countDownTimer: null == countDownTimer
          ? _value.countDownTimer
          : countDownTimer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.countDownTimer});

  @override
  final int countDownTimer;

  @override
  String toString() {
    return 'TimerState(countDownTimer: $countDownTimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.countDownTimer, countDownTimer) ||
                other.countDownTimer == countDownTimer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countDownTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TimerState {
  const factory _Initial({required final int countDownTimer}) = _$_Initial;

  @override
  int get countDownTimer;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
