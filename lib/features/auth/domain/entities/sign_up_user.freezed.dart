// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpUser _$SignUpUserFromJson(Map<String, dynamic> json) {
  return _SignUpUser.fromJson(json);
}

/// @nodoc
mixin _$SignUpUser {
  String get email => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get joined => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpUserCopyWith<SignUpUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpUserCopyWith<$Res> {
  factory $SignUpUserCopyWith(
          SignUpUser value, $Res Function(SignUpUser) then) =
      _$SignUpUserCopyWithImpl<$Res, SignUpUser>;
  @useResult
  $Res call({String email, String id, String joined, String name, String role});
}

/// @nodoc
class _$SignUpUserCopyWithImpl<$Res, $Val extends SignUpUser>
    implements $SignUpUserCopyWith<$Res> {
  _$SignUpUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? id = null,
    Object? joined = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpUserImplCopyWith<$Res>
    implements $SignUpUserCopyWith<$Res> {
  factory _$$SignUpUserImplCopyWith(
          _$SignUpUserImpl value, $Res Function(_$SignUpUserImpl) then) =
      __$$SignUpUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String id, String joined, String name, String role});
}

/// @nodoc
class __$$SignUpUserImplCopyWithImpl<$Res>
    extends _$SignUpUserCopyWithImpl<$Res, _$SignUpUserImpl>
    implements _$$SignUpUserImplCopyWith<$Res> {
  __$$SignUpUserImplCopyWithImpl(
      _$SignUpUserImpl _value, $Res Function(_$SignUpUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? id = null,
    Object? joined = null,
    Object? name = null,
    Object? role = null,
  }) {
    return _then(_$SignUpUserImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joined: null == joined
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpUserImpl implements _SignUpUser {
  _$SignUpUserImpl(
      {required this.email,
      required this.id,
      required this.joined,
      required this.name,
      required this.role});

  factory _$SignUpUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpUserImplFromJson(json);

  @override
  final String email;
  @override
  final String id;
  @override
  final String joined;
  @override
  final String name;
  @override
  final String role;

  @override
  String toString() {
    return 'SignUpUser(email: $email, id: $id, joined: $joined, name: $name, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.joined, joined) || other.joined == joined) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, id, joined, name, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      __$$SignUpUserImplCopyWithImpl<_$SignUpUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpUserImplToJson(
      this,
    );
  }
}

abstract class _SignUpUser implements SignUpUser {
  factory _SignUpUser(
      {required final String email,
      required final String id,
      required final String joined,
      required final String name,
      required final String role}) = _$SignUpUserImpl;

  factory _SignUpUser.fromJson(Map<String, dynamic> json) =
      _$SignUpUserImpl.fromJson;

  @override
  String get email;
  @override
  String get id;
  @override
  String get joined;
  @override
  String get name;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
