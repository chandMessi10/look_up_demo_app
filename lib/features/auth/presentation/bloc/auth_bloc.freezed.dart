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
    required TResult Function(
            String email, dynamic password, BuildContext context)
        loginSubmitted,
    required TResult Function(
            String email, dynamic password, BuildContext context)
        createUserSubmitted,
    required TResult Function() togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult? Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult? Function()? togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_CreateUserSubmitted value) createUserSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
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
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(_$LoginSubmittedImpl value,
          $Res Function(_$LoginSubmittedImpl) then) =
      __$$LoginSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, dynamic password, BuildContext context});
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
      _$LoginSubmittedImpl _value, $Res Function(_$LoginSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? context = null,
  }) {
    return _then(_$LoginSubmittedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == password ? _value.password! : password,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginSubmittedImpl implements _LoginSubmitted {
  const _$LoginSubmittedImpl(this.email, this.password, this.context);

  @override
  final String email;
  @override
  final dynamic password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.loginSubmitted(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email,
      const DeepCollectionEquality().hash(password), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      __$$LoginSubmittedImplCopyWithImpl<_$LoginSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, dynamic password, BuildContext context)
        loginSubmitted,
    required TResult Function(
            String email, dynamic password, BuildContext context)
        createUserSubmitted,
    required TResult Function() togglePasswordVisibility,
  }) {
    return loginSubmitted(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult? Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult? Function()? togglePasswordVisibility,
  }) {
    return loginSubmitted?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_CreateUserSubmitted value) createUserSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements AuthEvent {
  const factory _LoginSubmitted(final String email, final dynamic password,
      final BuildContext context) = _$LoginSubmittedImpl;

  String get email;
  dynamic get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSubmittedImplCopyWith<$Res> {
  factory _$$CreateUserSubmittedImplCopyWith(_$CreateUserSubmittedImpl value,
          $Res Function(_$CreateUserSubmittedImpl) then) =
      __$$CreateUserSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, dynamic password, BuildContext context});
}

/// @nodoc
class __$$CreateUserSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserSubmittedImpl>
    implements _$$CreateUserSubmittedImplCopyWith<$Res> {
  __$$CreateUserSubmittedImplCopyWithImpl(_$CreateUserSubmittedImpl _value,
      $Res Function(_$CreateUserSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = freezed,
    Object? context = null,
  }) {
    return _then(_$CreateUserSubmittedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == password ? _value.password! : password,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$CreateUserSubmittedImpl implements _CreateUserSubmitted {
  const _$CreateUserSubmittedImpl(this.email, this.password, this.context);

  @override
  final String email;
  @override
  final dynamic password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.createUserSubmitted(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email,
      const DeepCollectionEquality().hash(password), context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSubmittedImplCopyWith<_$CreateUserSubmittedImpl> get copyWith =>
      __$$CreateUserSubmittedImplCopyWithImpl<_$CreateUserSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, dynamic password, BuildContext context)
        loginSubmitted,
    required TResult Function(
            String email, dynamic password, BuildContext context)
        createUserSubmitted,
    required TResult Function() togglePasswordVisibility,
  }) {
    return createUserSubmitted(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult? Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult? Function()? togglePasswordVisibility,
  }) {
    return createUserSubmitted?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (createUserSubmitted != null) {
      return createUserSubmitted(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_CreateUserSubmitted value) createUserSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return createUserSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
  }) {
    return createUserSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (createUserSubmitted != null) {
      return createUserSubmitted(this);
    }
    return orElse();
  }
}

abstract class _CreateUserSubmitted implements AuthEvent {
  const factory _CreateUserSubmitted(final String email, final dynamic password,
      final BuildContext context) = _$CreateUserSubmittedImpl;

  String get email;
  dynamic get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$CreateUserSubmittedImplCopyWith<_$CreateUserSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl value,
          $Res Function(_$TogglePasswordVisibilityImpl) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl _value,
      $Res Function(_$TogglePasswordVisibilityImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePasswordVisibilityImpl implements _TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString() {
    return 'AuthEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, dynamic password, BuildContext context)
        loginSubmitted,
    required TResult Function(
            String email, dynamic password, BuildContext context)
        createUserSubmitted,
    required TResult Function() togglePasswordVisibility,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult? Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult? Function()? togglePasswordVisibility,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, dynamic password, BuildContext context)?
        loginSubmitted,
    TResult Function(String email, dynamic password, BuildContext context)?
        createUserSubmitted,
    TResult Function()? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSubmitted value) loginSubmitted,
    required TResult Function(_CreateUserSubmitted value) createUserSubmitted,
    required TResult Function(_TogglePasswordVisibility value)
        togglePasswordVisibility,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
    TResult? Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult? Function(_TogglePasswordVisibility value)?
        togglePasswordVisibility,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    TResult Function(_CreateUserSubmitted value)? createUserSubmitted,
    TResult Function(_TogglePasswordVisibility value)? togglePasswordVisibility,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class _TogglePasswordVisibility implements AuthEvent {
  const factory _TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
mixin _$AuthState {
  String get networkMessage => throw _privateConstructorUsedError;
  bool get loginSuccess => throw _privateConstructorUsedError;
  bool get signUpSuccess => throw _privateConstructorUsedError;
  bool get isLogInLoading => throw _privateConstructorUsedError;
  bool get isSignUpLoading => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;

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
      {String networkMessage,
      bool loginSuccess,
      bool signUpSuccess,
      bool isLogInLoading,
      bool isSignUpLoading,
      bool obscurePassword});
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
    Object? networkMessage = null,
    Object? loginSuccess = null,
    Object? signUpSuccess = null,
    Object? isLogInLoading = null,
    Object? isSignUpLoading = null,
    Object? obscurePassword = null,
  }) {
    return _then(_value.copyWith(
      networkMessage: null == networkMessage
          ? _value.networkMessage
          : networkMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loginSuccess: null == loginSuccess
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: null == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogInLoading: null == isLogInLoading
          ? _value.isLogInLoading
          : isLogInLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpLoading: null == isSignUpLoading
          ? _value.isSignUpLoading
          : isSignUpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String networkMessage,
      bool loginSuccess,
      bool signUpSuccess,
      bool isLogInLoading,
      bool isSignUpLoading,
      bool obscurePassword});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkMessage = null,
    Object? loginSuccess = null,
    Object? signUpSuccess = null,
    Object? isLogInLoading = null,
    Object? isSignUpLoading = null,
    Object? obscurePassword = null,
  }) {
    return _then(_$AuthStateImpl(
      networkMessage: null == networkMessage
          ? _value.networkMessage
          : networkMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loginSuccess: null == loginSuccess
          ? _value.loginSuccess
          : loginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpSuccess: null == signUpSuccess
          ? _value.signUpSuccess
          : signUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogInLoading: null == isLogInLoading
          ? _value.isLogInLoading
          : isLogInLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpLoading: null == isSignUpLoading
          ? _value.isSignUpLoading
          : isSignUpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl(
      {this.networkMessage = '',
      this.loginSuccess = false,
      this.signUpSuccess = false,
      this.isLogInLoading = false,
      this.isSignUpLoading = false,
      this.obscurePassword = true});

  @override
  @JsonKey()
  final String networkMessage;
  @override
  @JsonKey()
  final bool loginSuccess;
  @override
  @JsonKey()
  final bool signUpSuccess;
  @override
  @JsonKey()
  final bool isLogInLoading;
  @override
  @JsonKey()
  final bool isSignUpLoading;
  @override
  @JsonKey()
  final bool obscurePassword;

  @override
  String toString() {
    return 'AuthState(networkMessage: $networkMessage, loginSuccess: $loginSuccess, signUpSuccess: $signUpSuccess, isLogInLoading: $isLogInLoading, isSignUpLoading: $isSignUpLoading, obscurePassword: $obscurePassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.networkMessage, networkMessage) ||
                other.networkMessage == networkMessage) &&
            (identical(other.loginSuccess, loginSuccess) ||
                other.loginSuccess == loginSuccess) &&
            (identical(other.signUpSuccess, signUpSuccess) ||
                other.signUpSuccess == signUpSuccess) &&
            (identical(other.isLogInLoading, isLogInLoading) ||
                other.isLogInLoading == isLogInLoading) &&
            (identical(other.isSignUpLoading, isSignUpLoading) ||
                other.isSignUpLoading == isSignUpLoading) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkMessage, loginSuccess,
      signUpSuccess, isLogInLoading, isSignUpLoading, obscurePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final String networkMessage,
      final bool loginSuccess,
      final bool signUpSuccess,
      final bool isLogInLoading,
      final bool isSignUpLoading,
      final bool obscurePassword}) = _$AuthStateImpl;

  @override
  String get networkMessage;
  @override
  bool get loginSuccess;
  @override
  bool get signUpSuccess;
  @override
  bool get isLogInLoading;
  @override
  bool get isSignUpLoading;
  @override
  bool get obscurePassword;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
