import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  ) async {}
}
