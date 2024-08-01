


import 'package:dartz/dartz.dart';
import 'package:indemand_ticket_booking/domain/auth/auth_failure.dart';

import 'sign_up_model.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required SignupModel singupInfo,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });
  Future<void> signOut();
  Future<bool> checkAuthState();

  Future<Either<AuthFailure, Unit>> forgotPassword({
    required String email,
  });
}