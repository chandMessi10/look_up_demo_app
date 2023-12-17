// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAnimation value) startAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAnimation value)? startAnimation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAnimation value)? startAnimation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartAnimationImplCopyWith<$Res> {
  factory _$$StartAnimationImplCopyWith(_$StartAnimationImpl value,
          $Res Function(_$StartAnimationImpl) then) =
      __$$StartAnimationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartAnimationImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$StartAnimationImpl>
    implements _$$StartAnimationImplCopyWith<$Res> {
  __$$StartAnimationImplCopyWithImpl(
      _$StartAnimationImpl _value, $Res Function(_$StartAnimationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartAnimationImpl implements _StartAnimation {
  const _$StartAnimationImpl();

  @override
  String toString() {
    return 'SplashEvent.startAnimation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartAnimationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startAnimation,
  }) {
    return startAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startAnimation,
  }) {
    return startAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startAnimation,
    required TResult orElse(),
  }) {
    if (startAnimation != null) {
      return startAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAnimation value) startAnimation,
  }) {
    return startAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAnimation value)? startAnimation,
  }) {
    return startAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAnimation value)? startAnimation,
    required TResult orElse(),
  }) {
    if (startAnimation != null) {
      return startAnimation(this);
    }
    return orElse();
  }
}

abstract class _StartAnimation implements SplashEvent {
  const factory _StartAnimation() = _$StartAnimationImpl;
}

/// @nodoc
mixin _$SplashState {
  double get backgroundAnimationControllerValue =>
      throw _privateConstructorUsedError;
  bool get isAnimating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({double backgroundAnimationControllerValue, bool isAnimating});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundAnimationControllerValue = null,
    Object? isAnimating = null,
  }) {
    return _then(_value.copyWith(
      backgroundAnimationControllerValue: null ==
              backgroundAnimationControllerValue
          ? _value.backgroundAnimationControllerValue
          : backgroundAnimationControllerValue // ignore: cast_nullable_to_non_nullable
              as double,
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashStateImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$SplashStateImplCopyWith(
          _$SplashStateImpl value, $Res Function(_$SplashStateImpl) then) =
      __$$SplashStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double backgroundAnimationControllerValue, bool isAnimating});
}

/// @nodoc
class __$$SplashStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateImpl>
    implements _$$SplashStateImplCopyWith<$Res> {
  __$$SplashStateImplCopyWithImpl(
      _$SplashStateImpl _value, $Res Function(_$SplashStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundAnimationControllerValue = null,
    Object? isAnimating = null,
  }) {
    return _then(_$SplashStateImpl(
      backgroundAnimationControllerValue: null ==
              backgroundAnimationControllerValue
          ? _value.backgroundAnimationControllerValue
          : backgroundAnimationControllerValue // ignore: cast_nullable_to_non_nullable
              as double,
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SplashStateImpl implements _SplashState {
  _$SplashStateImpl(
      {this.backgroundAnimationControllerValue = 0, this.isAnimating = false});

  @override
  @JsonKey()
  final double backgroundAnimationControllerValue;
  @override
  @JsonKey()
  final bool isAnimating;

  @override
  String toString() {
    return 'SplashState(backgroundAnimationControllerValue: $backgroundAnimationControllerValue, isAnimating: $isAnimating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashStateImpl &&
            (identical(other.backgroundAnimationControllerValue,
                    backgroundAnimationControllerValue) ||
                other.backgroundAnimationControllerValue ==
                    backgroundAnimationControllerValue) &&
            (identical(other.isAnimating, isAnimating) ||
                other.isAnimating == isAnimating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, backgroundAnimationControllerValue, isAnimating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      __$$SplashStateImplCopyWithImpl<_$SplashStateImpl>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  factory _SplashState(
      {final double backgroundAnimationControllerValue,
      final bool isAnimating}) = _$SplashStateImpl;

  @override
  double get backgroundAnimationControllerValue;
  @override
  bool get isAnimating;
  @override
  @JsonKey(ignore: true)
  _$$SplashStateImplCopyWith<_$SplashStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
