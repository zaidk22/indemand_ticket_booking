// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_RegisterWithEmailAndPasswordCopyWith(
          _$_RegisterWithEmailAndPassword value,
          $Res Function(_$_RegisterWithEmailAndPassword) then) =
      __$$_RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupModel signupInfo});
}

/// @nodoc
class __$$_RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RegisterWithEmailAndPassword>
    implements _$$_RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$_RegisterWithEmailAndPasswordCopyWithImpl(
      _$_RegisterWithEmailAndPassword _value,
      $Res Function(_$_RegisterWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupInfo = null,
  }) {
    return _then(_$_RegisterWithEmailAndPassword(
      signupInfo: null == signupInfo
          ? _value.signupInfo
          : signupInfo // ignore: cast_nullable_to_non_nullable
              as SignupModel,
    ));
  }
}

/// @nodoc

class _$_RegisterWithEmailAndPassword
    with DiagnosticableTreeMixin
    implements _RegisterWithEmailAndPassword {
  const _$_RegisterWithEmailAndPassword({required this.signupInfo});

  @override
  final SignupModel signupInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.registerWithEmailAndPassword(signupInfo: $signupInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AuthEvent.registerWithEmailAndPassword'))
      ..add(DiagnosticsProperty('signupInfo', signupInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterWithEmailAndPassword &&
            (identical(other.signupInfo, signupInfo) ||
                other.signupInfo == signupInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterWithEmailAndPasswordCopyWith<_$_RegisterWithEmailAndPassword>
      get copyWith => __$$_RegisterWithEmailAndPasswordCopyWithImpl<
          _$_RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword(signupInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword?.call(signupInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(signupInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return registerWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPassword implements AuthEvent {
  const factory _RegisterWithEmailAndPassword(
          {required final SignupModel signupInfo}) =
      _$_RegisterWithEmailAndPassword;

  SignupModel get signupInfo;
  @JsonKey(ignore: true)
  _$$_RegisterWithEmailAndPasswordCopyWith<_$_RegisterWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$_SignInWithEmailAndPasswordCopyWith(
          _$_SignInWithEmailAndPassword value,
          $Res Function(_$_SignInWithEmailAndPassword) then) =
      __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInWithEmailAndPassword>
    implements _$$_SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$_SignInWithEmailAndPasswordCopyWithImpl(
      _$_SignInWithEmailAndPassword _value,
      $Res Function(_$_SignInWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignInWithEmailAndPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInWithEmailAndPassword
    with DiagnosticableTreeMixin
    implements _SignInWithEmailAndPassword {
  const _$_SignInWithEmailAndPassword(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInWithEmailAndPassword(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signInWithEmailAndPassword'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInWithEmailAndPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => __$$_SignInWithEmailAndPasswordCopyWithImpl<
          _$_SignInWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return signInWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPassword implements AuthEvent {
  const factory _SignInWithEmailAndPassword(
      {required final String email,
      required final String password}) = _$_SignInWithEmailAndPassword;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_SignInWithEmailAndPasswordCopyWith<_$_SignInWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut with DiagnosticableTreeMixin implements _SignOut {
  const _$_SignOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_CheckAuthStateCopyWith<$Res> {
  factory _$$_CheckAuthStateCopyWith(
          _$_CheckAuthState value, $Res Function(_$_CheckAuthState) then) =
      __$$_CheckAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthStateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckAuthState>
    implements _$$_CheckAuthStateCopyWith<$Res> {
  __$$_CheckAuthStateCopyWithImpl(
      _$_CheckAuthState _value, $Res Function(_$_CheckAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuthState
    with DiagnosticableTreeMixin
    implements _CheckAuthState {
  const _$_CheckAuthState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkAuthState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkAuthState'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return checkAuthState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return checkAuthState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkAuthState != null) {
      return checkAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return checkAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return checkAuthState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkAuthState != null) {
      return checkAuthState(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthState implements AuthEvent {
  const factory _CheckAuthState() = _$_CheckAuthState;
}

/// @nodoc
abstract class _$$_ForgotPasswordCopyWith<$Res> {
  factory _$$_ForgotPasswordCopyWith(
          _$_ForgotPassword value, $Res Function(_$_ForgotPassword) then) =
      __$$_ForgotPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, bool isSuccess});
}

/// @nodoc
class __$$_ForgotPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ForgotPassword>
    implements _$$_ForgotPasswordCopyWith<$Res> {
  __$$_ForgotPasswordCopyWithImpl(
      _$_ForgotPassword _value, $Res Function(_$_ForgotPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isSuccess = null,
  }) {
    return _then(_$_ForgotPassword(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPassword
    with DiagnosticableTreeMixin
    implements _ForgotPassword {
  const _$_ForgotPassword({required this.email, required this.isSuccess});

  @override
  final String email;
  @override
  final bool isSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.forgotPassword(email: $email, isSuccess: $isSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.forgotPassword'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('isSuccess', isSuccess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPassword &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      __$$_ForgotPasswordCopyWithImpl<_$_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return forgotPassword(email, isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return forgotPassword?.call(email, isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email, isSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword(
      {required final String email,
      required final bool isSuccess}) = _$_ForgotPassword;

  String get email;
  bool get isSuccess;
  @JsonKey(ignore: true)
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateConnectivityStatusCopyWith<$Res> {
  factory _$$_UpdateConnectivityStatusCopyWith(
          _$_UpdateConnectivityStatus value,
          $Res Function(_$_UpdateConnectivityStatus) then) =
      __$$_UpdateConnectivityStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult status});
}

/// @nodoc
class __$$_UpdateConnectivityStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UpdateConnectivityStatus>
    implements _$$_UpdateConnectivityStatusCopyWith<$Res> {
  __$$_UpdateConnectivityStatusCopyWithImpl(_$_UpdateConnectivityStatus _value,
      $Res Function(_$_UpdateConnectivityStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_UpdateConnectivityStatus(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_UpdateConnectivityStatus
    with DiagnosticableTreeMixin
    implements _UpdateConnectivityStatus {
  const _$_UpdateConnectivityStatus(this.status);

  @override
  final ConnectivityResult status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.updateConnectivityStatus(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.updateConnectivityStatus'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateConnectivityStatus &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateConnectivityStatusCopyWith<_$_UpdateConnectivityStatus>
      get copyWith => __$$_UpdateConnectivityStatusCopyWithImpl<
          _$_UpdateConnectivityStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return updateConnectivityStatus(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return updateConnectivityStatus?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateConnectivityStatus != null) {
      return updateConnectivityStatus(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return updateConnectivityStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return updateConnectivityStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (updateConnectivityStatus != null) {
      return updateConnectivityStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateConnectivityStatus implements AuthEvent {
  const factory _UpdateConnectivityStatus(final ConnectivityResult status) =
      _$_UpdateConnectivityStatus;

  ConnectivityResult get status;
  @JsonKey(ignore: true)
  _$$_UpdateConnectivityStatusCopyWith<_$_UpdateConnectivityStatus>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckConnectivityStatusCopyWith<$Res> {
  factory _$$_CheckConnectivityStatusCopyWith(_$_CheckConnectivityStatus value,
          $Res Function(_$_CheckConnectivityStatus) then) =
      __$$_CheckConnectivityStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckConnectivityStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckConnectivityStatus>
    implements _$$_CheckConnectivityStatusCopyWith<$Res> {
  __$$_CheckConnectivityStatusCopyWithImpl(_$_CheckConnectivityStatus _value,
      $Res Function(_$_CheckConnectivityStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckConnectivityStatus
    with DiagnosticableTreeMixin
    implements _CheckConnectivityStatus {
  const _$_CheckConnectivityStatus();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkConnectivityStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthEvent.checkConnectivityStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckConnectivityStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignupModel signupInfo)
        registerWithEmailAndPassword,
    required TResult Function(String email, String password)
        signInWithEmailAndPassword,
    required TResult Function() signOut,
    required TResult Function() checkAuthState,
    required TResult Function(String email, bool isSuccess) forgotPassword,
    required TResult Function(ConnectivityResult status)
        updateConnectivityStatus,
    required TResult Function() checkConnectivityStatus,
  }) {
    return checkConnectivityStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult? Function(String email, String password)?
        signInWithEmailAndPassword,
    TResult? Function()? signOut,
    TResult? Function()? checkAuthState,
    TResult? Function(String email, bool isSuccess)? forgotPassword,
    TResult? Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult? Function()? checkConnectivityStatus,
  }) {
    return checkConnectivityStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignupModel signupInfo)? registerWithEmailAndPassword,
    TResult Function(String email, String password)? signInWithEmailAndPassword,
    TResult Function()? signOut,
    TResult Function()? checkAuthState,
    TResult Function(String email, bool isSuccess)? forgotPassword,
    TResult Function(ConnectivityResult status)? updateConnectivityStatus,
    TResult Function()? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkConnectivityStatus != null) {
      return checkConnectivityStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegisterWithEmailAndPassword value)
        registerWithEmailAndPassword,
    required TResult Function(_SignInWithEmailAndPassword value)
        signInWithEmailAndPassword,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_CheckAuthState value) checkAuthState,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdateConnectivityStatus value)
        updateConnectivityStatus,
    required TResult Function(_CheckConnectivityStatus value)
        checkConnectivityStatus,
  }) {
    return checkConnectivityStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult? Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_CheckAuthState value)? checkAuthState,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdateConnectivityStatus value)?
        updateConnectivityStatus,
    TResult? Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
  }) {
    return checkConnectivityStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegisterWithEmailAndPassword value)?
        registerWithEmailAndPassword,
    TResult Function(_SignInWithEmailAndPassword value)?
        signInWithEmailAndPassword,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_CheckAuthState value)? checkAuthState,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdateConnectivityStatus value)? updateConnectivityStatus,
    TResult Function(_CheckConnectivityStatus value)? checkConnectivityStatus,
    required TResult orElse(),
  }) {
    if (checkConnectivityStatus != null) {
      return checkConnectivityStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckConnectivityStatus implements AuthEvent {
  const factory _CheckConnectivityStatus() = _$_CheckConnectivityStatus;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUserSignedin => throw _privateConstructorUsedError;
  String get signinEmail => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get loginFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signupFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>>
      get forgotPasswordFailFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  bool get isNetworkAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUserSignedin,
      String signinEmail,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> loginFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> signupFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>>
          forgotPasswordFailFailureOrSuccessOption,
      bool isNetworkAvailable});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUserSignedin = null,
    Object? signinEmail = null,
    Object? authFailureOrSuccessOption = null,
    Object? loginFailureOrSuccessOption = null,
    Object? signupFailureOrSuccessOption = null,
    Object? forgotPasswordFailFailureOrSuccessOption = null,
    Object? isNetworkAvailable = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserSignedin: null == isUserSignedin
          ? _value.isUserSignedin
          : isUserSignedin // ignore: cast_nullable_to_non_nullable
              as bool,
      signinEmail: null == signinEmail
          ? _value.signinEmail
          : signinEmail // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      loginFailureOrSuccessOption: null == loginFailureOrSuccessOption
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signupFailureOrSuccessOption: null == signupFailureOrSuccessOption
          ? _value.signupFailureOrSuccessOption
          : signupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      forgotPasswordFailFailureOrSuccessOption: null ==
              forgotPasswordFailFailureOrSuccessOption
          ? _value.forgotPasswordFailFailureOrSuccessOption
          : forgotPasswordFailFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isNetworkAvailable: null == isNetworkAvailable
          ? _value.isNetworkAvailable
          : isNetworkAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUserSignedin,
      String signinEmail,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> loginFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>> signupFailureOrSuccessOption,
      Option<Either<AuthFailure, Unit>>
          forgotPasswordFailFailureOrSuccessOption,
      bool isNetworkAvailable});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUserSignedin = null,
    Object? signinEmail = null,
    Object? authFailureOrSuccessOption = null,
    Object? loginFailureOrSuccessOption = null,
    Object? signupFailureOrSuccessOption = null,
    Object? forgotPasswordFailFailureOrSuccessOption = null,
    Object? isNetworkAvailable = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserSignedin: null == isUserSignedin
          ? _value.isUserSignedin
          : isUserSignedin // ignore: cast_nullable_to_non_nullable
              as bool,
      signinEmail: null == signinEmail
          ? _value.signinEmail
          : signinEmail // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      loginFailureOrSuccessOption: null == loginFailureOrSuccessOption
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      signupFailureOrSuccessOption: null == signupFailureOrSuccessOption
          ? _value.signupFailureOrSuccessOption
          : signupFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      forgotPasswordFailFailureOrSuccessOption: null ==
              forgotPasswordFailFailureOrSuccessOption
          ? _value.forgotPasswordFailFailureOrSuccessOption
          : forgotPasswordFailFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isNetworkAvailable: null == isNetworkAvailable
          ? _value.isNetworkAvailable
          : isNetworkAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthState with DiagnosticableTreeMixin implements _AuthState {
  const _$_AuthState(
      {required this.isLoading,
      required this.isUserSignedin,
      required this.signinEmail,
      required this.authFailureOrSuccessOption,
      required this.loginFailureOrSuccessOption,
      required this.signupFailureOrSuccessOption,
      required this.forgotPasswordFailFailureOrSuccessOption,
      required this.isNetworkAvailable});

  @override
  final bool isLoading;
  @override
  final bool isUserSignedin;
  @override
  final String signinEmail;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> loginFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>> signupFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, Unit>>
      forgotPasswordFailFailureOrSuccessOption;
  @override
  final bool isNetworkAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(isLoading: $isLoading, isUserSignedin: $isUserSignedin, signinEmail: $signinEmail, authFailureOrSuccessOption: $authFailureOrSuccessOption, loginFailureOrSuccessOption: $loginFailureOrSuccessOption, signupFailureOrSuccessOption: $signupFailureOrSuccessOption, forgotPasswordFailFailureOrSuccessOption: $forgotPasswordFailFailureOrSuccessOption, isNetworkAvailable: $isNetworkAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isUserSignedin', isUserSignedin))
      ..add(DiagnosticsProperty('signinEmail', signinEmail))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'loginFailureOrSuccessOption', loginFailureOrSuccessOption))
      ..add(DiagnosticsProperty(
          'signupFailureOrSuccessOption', signupFailureOrSuccessOption))
      ..add(DiagnosticsProperty('forgotPasswordFailFailureOrSuccessOption',
          forgotPasswordFailFailureOrSuccessOption))
      ..add(DiagnosticsProperty('isNetworkAvailable', isNetworkAvailable));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUserSignedin, isUserSignedin) ||
                other.isUserSignedin == isUserSignedin) &&
            (identical(other.signinEmail, signinEmail) ||
                other.signinEmail == signinEmail) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.loginFailureOrSuccessOption,
                    loginFailureOrSuccessOption) ||
                other.loginFailureOrSuccessOption ==
                    loginFailureOrSuccessOption) &&
            (identical(other.signupFailureOrSuccessOption,
                    signupFailureOrSuccessOption) ||
                other.signupFailureOrSuccessOption ==
                    signupFailureOrSuccessOption) &&
            (identical(other.forgotPasswordFailFailureOrSuccessOption,
                    forgotPasswordFailFailureOrSuccessOption) ||
                other.forgotPasswordFailFailureOrSuccessOption ==
                    forgotPasswordFailFailureOrSuccessOption) &&
            (identical(other.isNetworkAvailable, isNetworkAvailable) ||
                other.isNetworkAvailable == isNetworkAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isUserSignedin,
      signinEmail,
      authFailureOrSuccessOption,
      loginFailureOrSuccessOption,
      signupFailureOrSuccessOption,
      forgotPasswordFailFailureOrSuccessOption,
      isNetworkAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isUserSignedin,
      required final String signinEmail,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          loginFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          signupFailureOrSuccessOption,
      required final Option<Either<AuthFailure, Unit>>
          forgotPasswordFailFailureOrSuccessOption,
      required final bool isNetworkAvailable}) = _$_AuthState;

  @override
  bool get isLoading;
  @override
  bool get isUserSignedin;
  @override
  String get signinEmail;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get loginFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>> get signupFailureOrSuccessOption;
  @override
  Option<Either<AuthFailure, Unit>>
      get forgotPasswordFailFailureOrSuccessOption;
  @override
  bool get isNetworkAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
