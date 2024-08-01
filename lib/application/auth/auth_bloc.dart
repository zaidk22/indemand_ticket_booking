import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:indemand_ticket_booking/domain/auth/auth_failure.dart';
import 'package:indemand_ticket_booking/domain/auth/i_auth_facade.dart';
import 'package:indemand_ticket_booking/domain/auth/sign_up_model.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<_$_CheckAuthState>((event, emit) async {
     state.copyWith(authFailureOrSuccessOption: none(),
     isUserSignedin: false
     );
     final bool isUserSignedin = await _authFacade.checkAuthState();
     if(isUserSignedin){
      emit.call(state.copyWith(
         isUserSignedin: isUserSignedin,
              authFailureOrSuccessOption: some(right(unit)),
      ));
     }
     else{
      emit.call(state.copyWith(authFailureOrSuccessOption: some(left(const AuthFailure.signingFail())),
      isUserSignedin: isUserSignedin
      ));
     }
       emit.call(
          state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
        );
    });
     on<_SignOut>(
      (event, emit) async {
        emit.call(
          state.copyWith(
            isUserSignedin: false,
          ),
        );
        _authFacade.signOut();
      },
    );
        on<_SignInWithEmailAndPassword>((event, emit) async {
      emit.call(
        state.copyWith(
          isLoading: true,
          isUserSignedin: false,
          loginFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _authFacade.signInWithEmailAndPassword(
        password: event.password,
        emailAddress: event.email,
      );
      emit.call(
        opt.fold(
          (l) => state.copyWith(
            isLoading: false,
            isUserSignedin: false,
            loginFailureOrSuccessOption: some(left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            isUserSignedin: true,
            loginFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
      emit.call(
        state.copyWith(
          isLoading: false,
          loginFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_ForgotPassword>((event, emit) async {
      emit.call(
        state.copyWith(
          isLoading: event.isSuccess ? false : true,
          signinEmail: event.email,
          forgotPasswordFailFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _authFacade.forgotPassword(
        email: event.email,
      );
      emit.call(
        opt.fold(
          (l) => state.copyWith(
            isLoading: false,
           forgotPasswordFailFailureOrSuccessOption: some(left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
              forgotPasswordFailFailureOrSuccessOption:
                event.isSuccess ? none() : some(right(unit)),
          ),
        ),
      );

      emit.call(
        state.copyWith(
          isLoading: false,
            forgotPasswordFailFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_RegisterWithEmailAndPassword>((event, emit) async {
      emit.call(
        state.copyWith(
          isLoading: true,
          signinEmail: event.signupInfo.email,
          signupFailureOrSuccessOption: none(),
        ),
      );

      final opt = await _authFacade.registerWithEmailAndPassword(
        singupInfo: event.signupInfo,
      );
      emit.call(
        opt.fold(
          (l) => state.copyWith(
            isLoading: false,
            signupFailureOrSuccessOption: some(left(l)),
          ),
          (r) => state.copyWith(
            isLoading: false,
            signupFailureOrSuccessOption: some(right(unit)),
          ),
        ),
      );
      emit.call(
        state.copyWith(
          isLoading: false,
          signupFailureOrSuccessOption: none(),
        ),
      );
    });
  
  }
}
