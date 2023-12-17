part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState({
    @Default(0) double backgroundAnimationControllerValue,
    @Default(false) bool isAnimating,
  }) = _SplashState;

  factory SplashState.initial() => SplashState();
}
