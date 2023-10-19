// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsEventCopyWith<$Res> {
  factory $EventsEventCopyWith(
          EventsEvent value, $Res Function(EventsEvent) then) =
      _$EventsEventCopyWithImpl<$Res, EventsEvent>;
}

/// @nodoc
class _$EventsEventCopyWithImpl<$Res, $Val extends EventsEvent>
    implements $EventsEventCopyWith<$Res> {
  _$EventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetLatestEventsCopyWith<$Res> {
  factory _$$_GetLatestEventsCopyWith(
          _$_GetLatestEvents value, $Res Function(_$_GetLatestEvents) then) =
      __$$_GetLatestEventsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LatestEventsModel> events});
}

/// @nodoc
class __$$_GetLatestEventsCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GetLatestEvents>
    implements _$$_GetLatestEventsCopyWith<$Res> {
  __$$_GetLatestEventsCopyWithImpl(
      _$_GetLatestEvents _value, $Res Function(_$_GetLatestEvents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_GetLatestEvents(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<LatestEventsModel>,
    ));
  }
}

/// @nodoc

class _$_GetLatestEvents implements _GetLatestEvents {
  const _$_GetLatestEvents(final List<LatestEventsModel> events)
      : _events = events;

  final List<LatestEventsModel> _events;
  @override
  List<LatestEventsModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsEvent.getLatestEvents(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLatestEvents &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLatestEventsCopyWith<_$_GetLatestEvents> get copyWith =>
      __$$_GetLatestEventsCopyWithImpl<_$_GetLatestEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) {
    return getLatestEvents(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) {
    return getLatestEvents?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getLatestEvents != null) {
      return getLatestEvents(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) {
    return getLatestEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) {
    return getLatestEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getLatestEvents != null) {
      return getLatestEvents(this);
    }
    return orElse();
  }
}

abstract class _GetLatestEvents implements EventsEvent {
  const factory _GetLatestEvents(final List<LatestEventsModel> events) =
      _$_GetLatestEvents;

  List<LatestEventsModel> get events;
  @JsonKey(ignore: true)
  _$$_GetLatestEventsCopyWith<_$_GetLatestEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPopularEventsCopyWith<$Res> {
  factory _$$_GetPopularEventsCopyWith(
          _$_GetPopularEvents value, $Res Function(_$_GetPopularEvents) then) =
      __$$_GetPopularEventsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PopularEventsModel> events});
}

/// @nodoc
class __$$_GetPopularEventsCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GetPopularEvents>
    implements _$$_GetPopularEventsCopyWith<$Res> {
  __$$_GetPopularEventsCopyWithImpl(
      _$_GetPopularEvents _value, $Res Function(_$_GetPopularEvents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_GetPopularEvents(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
    ));
  }
}

/// @nodoc

class _$_GetPopularEvents implements _GetPopularEvents {
  const _$_GetPopularEvents(final List<PopularEventsModel> events)
      : _events = events;

  final List<PopularEventsModel> _events;
  @override
  List<PopularEventsModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsEvent.getPopularEvents(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPopularEvents &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularEventsCopyWith<_$_GetPopularEvents> get copyWith =>
      __$$_GetPopularEventsCopyWithImpl<_$_GetPopularEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) {
    return getPopularEvents(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) {
    return getPopularEvents?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getPopularEvents != null) {
      return getPopularEvents(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) {
    return getPopularEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) {
    return getPopularEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getPopularEvents != null) {
      return getPopularEvents(this);
    }
    return orElse();
  }
}

abstract class _GetPopularEvents implements EventsEvent {
  const factory _GetPopularEvents(final List<PopularEventsModel> events) =
      _$_GetPopularEvents;

  List<PopularEventsModel> get events;
  @JsonKey(ignore: true)
  _$$_GetPopularEventsCopyWith<_$_GetPopularEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetDetailedEventCopyWith<$Res> {
  factory _$$_GetDetailedEventCopyWith(
          _$_GetDetailedEvent value, $Res Function(_$_GetDetailedEvent) then) =
      __$$_GetDetailedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetDetailedEventCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GetDetailedEvent>
    implements _$$_GetDetailedEventCopyWith<$Res> {
  __$$_GetDetailedEventCopyWithImpl(
      _$_GetDetailedEvent _value, $Res Function(_$_GetDetailedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetDetailedEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetDetailedEvent implements _GetDetailedEvent {
  const _$_GetDetailedEvent({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EventsEvent.getEventDetails(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDetailedEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDetailedEventCopyWith<_$_GetDetailedEvent> get copyWith =>
      __$$_GetDetailedEventCopyWithImpl<_$_GetDetailedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) {
    return getEventDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) {
    return getEventDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getEventDetails != null) {
      return getEventDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) {
    return getEventDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) {
    return getEventDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getEventDetails != null) {
      return getEventDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetailedEvent implements EventsEvent {
  const factory _GetDetailedEvent({required final int id}) =
      _$_GetDetailedEvent;

  int get id;
  @JsonKey(ignore: true)
  _$$_GetDetailedEventCopyWith<_$_GetDetailedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMyTicketsCopyWith<$Res> {
  factory _$$_GetMyTicketsCopyWith(
          _$_GetMyTickets value, $Res Function(_$_GetMyTickets) then) =
      __$$_GetMyTicketsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PopularEventsModel> tickets});
}

/// @nodoc
class __$$_GetMyTicketsCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GetMyTickets>
    implements _$$_GetMyTicketsCopyWith<$Res> {
  __$$_GetMyTicketsCopyWithImpl(
      _$_GetMyTickets _value, $Res Function(_$_GetMyTickets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$_GetMyTickets(
      null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
    ));
  }
}

/// @nodoc

class _$_GetMyTickets implements _GetMyTickets {
  const _$_GetMyTickets(final List<PopularEventsModel> tickets)
      : _tickets = tickets;

  final List<PopularEventsModel> _tickets;
  @override
  List<PopularEventsModel> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'EventsEvent.getMyTickets(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMyTickets &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMyTicketsCopyWith<_$_GetMyTickets> get copyWith =>
      __$$_GetMyTicketsCopyWithImpl<_$_GetMyTickets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) {
    return getMyTickets(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) {
    return getMyTickets?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getMyTickets != null) {
      return getMyTickets(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) {
    return getMyTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) {
    return getMyTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getMyTickets != null) {
      return getMyTickets(this);
    }
    return orElse();
  }
}

abstract class _GetMyTickets implements EventsEvent {
  const factory _GetMyTickets(final List<PopularEventsModel> tickets) =
      _$_GetMyTickets;

  List<PopularEventsModel> get tickets;
  @JsonKey(ignore: true)
  _$$_GetMyTicketsCopyWith<_$_GetMyTickets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetPopularLocationsCopyWith<$Res> {
  factory _$$_GetPopularLocationsCopyWith(_$_GetPopularLocations value,
          $Res Function(_$_GetPopularLocations) then) =
      __$$_GetPopularLocationsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PopularEventsModel> events});
}

/// @nodoc
class __$$_GetPopularLocationsCopyWithImpl<$Res>
    extends _$EventsEventCopyWithImpl<$Res, _$_GetPopularLocations>
    implements _$$_GetPopularLocationsCopyWith<$Res> {
  __$$_GetPopularLocationsCopyWithImpl(_$_GetPopularLocations _value,
      $Res Function(_$_GetPopularLocations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_GetPopularLocations(
      null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
    ));
  }
}

/// @nodoc

class _$_GetPopularLocations implements _GetPopularLocations {
  const _$_GetPopularLocations(final List<PopularEventsModel> events)
      : _events = events;

  final List<PopularEventsModel> _events;
  @override
  List<PopularEventsModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventsEvent.getPopularLocations(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPopularLocations &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularLocationsCopyWith<_$_GetPopularLocations> get copyWith =>
      __$$_GetPopularLocationsCopyWithImpl<_$_GetPopularLocations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LatestEventsModel> events) getLatestEvents,
    required TResult Function(List<PopularEventsModel> events) getPopularEvents,
    required TResult Function(int id) getEventDetails,
    required TResult Function(List<PopularEventsModel> tickets) getMyTickets,
    required TResult Function(List<PopularEventsModel> events)
        getPopularLocations,
  }) {
    return getPopularLocations(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult? Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult? Function(int id)? getEventDetails,
    TResult? Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult? Function(List<PopularEventsModel> events)? getPopularLocations,
  }) {
    return getPopularLocations?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LatestEventsModel> events)? getLatestEvents,
    TResult Function(List<PopularEventsModel> events)? getPopularEvents,
    TResult Function(int id)? getEventDetails,
    TResult Function(List<PopularEventsModel> tickets)? getMyTickets,
    TResult Function(List<PopularEventsModel> events)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getPopularLocations != null) {
      return getPopularLocations(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestEvents value) getLatestEvents,
    required TResult Function(_GetPopularEvents value) getPopularEvents,
    required TResult Function(_GetDetailedEvent value) getEventDetails,
    required TResult Function(_GetMyTickets value) getMyTickets,
    required TResult Function(_GetPopularLocations value) getPopularLocations,
  }) {
    return getPopularLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestEvents value)? getLatestEvents,
    TResult? Function(_GetPopularEvents value)? getPopularEvents,
    TResult? Function(_GetDetailedEvent value)? getEventDetails,
    TResult? Function(_GetMyTickets value)? getMyTickets,
    TResult? Function(_GetPopularLocations value)? getPopularLocations,
  }) {
    return getPopularLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestEvents value)? getLatestEvents,
    TResult Function(_GetPopularEvents value)? getPopularEvents,
    TResult Function(_GetDetailedEvent value)? getEventDetails,
    TResult Function(_GetMyTickets value)? getMyTickets,
    TResult Function(_GetPopularLocations value)? getPopularLocations,
    required TResult orElse(),
  }) {
    if (getPopularLocations != null) {
      return getPopularLocations(this);
    }
    return orElse();
  }
}

abstract class _GetPopularLocations implements EventsEvent {
  const factory _GetPopularLocations(final List<PopularEventsModel> events) =
      _$_GetPopularLocations;

  List<PopularEventsModel> get events;
  @JsonKey(ignore: true)
  _$$_GetPopularLocationsCopyWith<_$_GetPopularLocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isShimmerEnable => throw _privateConstructorUsedError;
  List<LatestEventsModel> get latestEventList =>
      throw _privateConstructorUsedError;
  List<PopularEventsModel> get popularEventList =>
      throw _privateConstructorUsedError;
  List<PopularEventsModel> get eventDetails =>
      throw _privateConstructorUsedError;
  List<PopularEventsModel> get myTickets => throw _privateConstructorUsedError;
  List<PopularEventsModel> get popularLocations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventsStateCopyWith<EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsStateCopyWith<$Res> {
  factory $EventsStateCopyWith(
          EventsState value, $Res Function(EventsState) then) =
      _$EventsStateCopyWithImpl<$Res, EventsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isShimmerEnable,
      List<LatestEventsModel> latestEventList,
      List<PopularEventsModel> popularEventList,
      List<PopularEventsModel> eventDetails,
      List<PopularEventsModel> myTickets,
      List<PopularEventsModel> popularLocations});
}

/// @nodoc
class _$EventsStateCopyWithImpl<$Res, $Val extends EventsState>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isShimmerEnable = null,
    Object? latestEventList = null,
    Object? popularEventList = null,
    Object? eventDetails = null,
    Object? myTickets = null,
    Object? popularLocations = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmerEnable: null == isShimmerEnable
          ? _value.isShimmerEnable
          : isShimmerEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      latestEventList: null == latestEventList
          ? _value.latestEventList
          : latestEventList // ignore: cast_nullable_to_non_nullable
              as List<LatestEventsModel>,
      popularEventList: null == popularEventList
          ? _value.popularEventList
          : popularEventList // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      eventDetails: null == eventDetails
          ? _value.eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      myTickets: null == myTickets
          ? _value.myTickets
          : myTickets // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      popularLocations: null == popularLocations
          ? _value.popularLocations
          : popularLocations // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventsStateCopyWith<$Res>
    implements $EventsStateCopyWith<$Res> {
  factory _$$_EventsStateCopyWith(
          _$_EventsState value, $Res Function(_$_EventsState) then) =
      __$$_EventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isShimmerEnable,
      List<LatestEventsModel> latestEventList,
      List<PopularEventsModel> popularEventList,
      List<PopularEventsModel> eventDetails,
      List<PopularEventsModel> myTickets,
      List<PopularEventsModel> popularLocations});
}

/// @nodoc
class __$$_EventsStateCopyWithImpl<$Res>
    extends _$EventsStateCopyWithImpl<$Res, _$_EventsState>
    implements _$$_EventsStateCopyWith<$Res> {
  __$$_EventsStateCopyWithImpl(
      _$_EventsState _value, $Res Function(_$_EventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isShimmerEnable = null,
    Object? latestEventList = null,
    Object? popularEventList = null,
    Object? eventDetails = null,
    Object? myTickets = null,
    Object? popularLocations = null,
  }) {
    return _then(_$_EventsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShimmerEnable: null == isShimmerEnable
          ? _value.isShimmerEnable
          : isShimmerEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      latestEventList: null == latestEventList
          ? _value._latestEventList
          : latestEventList // ignore: cast_nullable_to_non_nullable
              as List<LatestEventsModel>,
      popularEventList: null == popularEventList
          ? _value._popularEventList
          : popularEventList // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      eventDetails: null == eventDetails
          ? _value._eventDetails
          : eventDetails // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      myTickets: null == myTickets
          ? _value._myTickets
          : myTickets // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
      popularLocations: null == popularLocations
          ? _value._popularLocations
          : popularLocations // ignore: cast_nullable_to_non_nullable
              as List<PopularEventsModel>,
    ));
  }
}

/// @nodoc

class _$_EventsState implements _EventsState {
  const _$_EventsState(
      {required this.isLoading,
      required this.isShimmerEnable,
      required final List<LatestEventsModel> latestEventList,
      required final List<PopularEventsModel> popularEventList,
      required final List<PopularEventsModel> eventDetails,
      required final List<PopularEventsModel> myTickets,
      required final List<PopularEventsModel> popularLocations})
      : _latestEventList = latestEventList,
        _popularEventList = popularEventList,
        _eventDetails = eventDetails,
        _myTickets = myTickets,
        _popularLocations = popularLocations;

  @override
  final bool isLoading;
  @override
  final bool isShimmerEnable;
  final List<LatestEventsModel> _latestEventList;
  @override
  List<LatestEventsModel> get latestEventList {
    if (_latestEventList is EqualUnmodifiableListView) return _latestEventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestEventList);
  }

  final List<PopularEventsModel> _popularEventList;
  @override
  List<PopularEventsModel> get popularEventList {
    if (_popularEventList is EqualUnmodifiableListView)
      return _popularEventList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularEventList);
  }

  final List<PopularEventsModel> _eventDetails;
  @override
  List<PopularEventsModel> get eventDetails {
    if (_eventDetails is EqualUnmodifiableListView) return _eventDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eventDetails);
  }

  final List<PopularEventsModel> _myTickets;
  @override
  List<PopularEventsModel> get myTickets {
    if (_myTickets is EqualUnmodifiableListView) return _myTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myTickets);
  }

  final List<PopularEventsModel> _popularLocations;
  @override
  List<PopularEventsModel> get popularLocations {
    if (_popularLocations is EqualUnmodifiableListView)
      return _popularLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularLocations);
  }

  @override
  String toString() {
    return 'EventsState(isLoading: $isLoading, isShimmerEnable: $isShimmerEnable, latestEventList: $latestEventList, popularEventList: $popularEventList, eventDetails: $eventDetails, myTickets: $myTickets, popularLocations: $popularLocations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isShimmerEnable, isShimmerEnable) ||
                other.isShimmerEnable == isShimmerEnable) &&
            const DeepCollectionEquality()
                .equals(other._latestEventList, _latestEventList) &&
            const DeepCollectionEquality()
                .equals(other._popularEventList, _popularEventList) &&
            const DeepCollectionEquality()
                .equals(other._eventDetails, _eventDetails) &&
            const DeepCollectionEquality()
                .equals(other._myTickets, _myTickets) &&
            const DeepCollectionEquality()
                .equals(other._popularLocations, _popularLocations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isShimmerEnable,
      const DeepCollectionEquality().hash(_latestEventList),
      const DeepCollectionEquality().hash(_popularEventList),
      const DeepCollectionEquality().hash(_eventDetails),
      const DeepCollectionEquality().hash(_myTickets),
      const DeepCollectionEquality().hash(_popularLocations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      __$$_EventsStateCopyWithImpl<_$_EventsState>(this, _$identity);
}

abstract class _EventsState implements EventsState {
  const factory _EventsState(
          {required final bool isLoading,
          required final bool isShimmerEnable,
          required final List<LatestEventsModel> latestEventList,
          required final List<PopularEventsModel> popularEventList,
          required final List<PopularEventsModel> eventDetails,
          required final List<PopularEventsModel> myTickets,
          required final List<PopularEventsModel> popularLocations}) =
      _$_EventsState;

  @override
  bool get isLoading;
  @override
  bool get isShimmerEnable;
  @override
  List<LatestEventsModel> get latestEventList;
  @override
  List<PopularEventsModel> get popularEventList;
  @override
  List<PopularEventsModel> get eventDetails;
  @override
  List<PopularEventsModel> get myTickets;
  @override
  List<PopularEventsModel> get popularLocations;
  @override
  @JsonKey(ignore: true)
  _$$_EventsStateCopyWith<_$_EventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
