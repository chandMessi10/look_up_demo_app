// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpUserImpl _$$SignUpUserImplFromJson(Map<String, dynamic> json) =>
    _$SignUpUserImpl(
      email: json['email'] as String,
      id: json['id'] as String,
      joined: json['joined'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$SignUpUserImplToJson(_$SignUpUserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'joined': instance.joined,
      'name': instance.name,
      'role': instance.role,
    };
