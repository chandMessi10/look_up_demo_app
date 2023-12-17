import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AnimationController logoAnimationController;
  final AnimationController backgroundAnimationController;
  final AnimationController loginButtonAnimationController;
  final AnimationController loginButtonNavigationAnimationController;

  SplashBloc(
    this.logoAnimationController,
    this.backgroundAnimationController,
    this.loginButtonAnimationController,
    this.loginButtonNavigationAnimationController,
  ) : super(SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          startAnimation: () => _startScreenAnimation(emit),
        );
      },
    );
  }

  _startScreenAnimation(
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(isAnimating: true));
    await logoAnimationController.forward().then((value) {
      if (logoAnimationController.isCompleted) {
        backgroundAnimationController.forward().then((value) {
          if (backgroundAnimationController.isCompleted) {
            loginButtonAnimationController.forward();
            if (loginButtonAnimationController.isCompleted) {
              emit(state.copyWith(isAnimating: false));
            }
          }
        });
      }
    });
  }
}
