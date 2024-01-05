import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:look_up_demo_app/core/services/locator.dart';
import 'package:look_up_demo_app/features/auth/data/auth_repository.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          loginSubmitted: (String email, password, BuildContext context) =>
              _onLoginSubmitted(emit, context, email, password),
          createUserSubmitted:
              (String name, email, password, BuildContext context) =>
                  _onCreateUserSubmitted(emit, context, name, email, password),
          togglePasswordVisibility: () => _onPasswordVisibilityToggle(emit),
        );
      },
    );
  }

  _onPasswordVisibilityToggle(
    Emitter<AuthState> emit,
  ) {
    if (state.obscurePassword) {
      emit(state.copyWith(obscurePassword: false));
    } else {
      emit(state.copyWith(obscurePassword: true));
    }
  }

  _onLoginSubmitted(
    Emitter<AuthState> emit,
    BuildContext context,
    String email,
    password,
  ) async {
    emit(state.copyWith(isLogInLoading: true));
    final authRepository = getIt.get<AuthRepository>();
    Either<String, User?> result =
        await authRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (errorMessage) {
        emit(
          state.copyWith(
            isLogInLoading: false,
            networkMessage: errorMessage,
            loginSuccess: false,
          ),
        );
      },
      (user) {
        emit(
          state.copyWith(
            isLogInLoading: false,
            loginSuccess: true,
          ),
        );
      },
    );
  }

  _onCreateUserSubmitted(
    Emitter<AuthState> emit,
    BuildContext context,
    String name,
    email,
    password,
  ) async {
    emit(state.copyWith(isSignUpLoading: true));
    final authRepository = getIt.get<AuthRepository>();
    Either<String, User?> result =
        await authRepository.signUpWithEmailAndPassword(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (errorMessage) {
        emit(
          state.copyWith(
            isSignUpLoading: false,
            networkMessage: errorMessage,
            signUpSuccess: false,
          ),
        );
      },
      (user) {
        emit(state.copyWith(isSignUpLoading: false, signUpSuccess: true));
      },
    );
  }
}
