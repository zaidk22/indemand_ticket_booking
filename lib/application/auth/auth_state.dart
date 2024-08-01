part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isUserSignedin,
    required String signinEmail,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> loginFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> signupFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>>
        forgotPasswordFailFailureOrSuccessOption,
    required bool isNetworkAvailable,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
      isLoading: false,
        signinEmail: '',
        isUserSignedin: false,
        loginFailureOrSuccessOption: none(),
        signupFailureOrSuccessOption: none(),
        authFailureOrSuccessOption: none(),
        forgotPasswordFailFailureOrSuccessOption: none(),
        isNetworkAvailable: true,
      );
}
