part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
 const factory AuthEvent.registerWithEmailAndPassword({
  required SignupModel signupInfo
 }) = _RegisterWithEmailAndPassword ;

 const factory AuthEvent.signInWithEmailAndPassword({
  required String email,
  required String password
 }) = _SignInWithEmailAndPassword ;

   const factory AuthEvent.signOut() = _SignOut;

  const factory AuthEvent.checkAuthState() = _CheckAuthState;

 const factory AuthEvent.forgotPassword({
  required String email,
  required bool isSuccess
 }) = _ForgotPassword;

  const factory AuthEvent.updateConnectivityStatus(ConnectivityResult status) =
      _UpdateConnectivityStatus;
  const factory AuthEvent.checkConnectivityStatus() = _CheckConnectivityStatus;

}