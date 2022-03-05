// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPayload _$NotificationPayloadFromJson(Map<String, dynamic> json) =>
    NotificationPayload(
      id: json['id'] as int?,
      notificationId: json['notificationId'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    )..elementId = json['elementId'] as int?;

Map<String, dynamic> _$NotificationPayloadToJson(
        NotificationPayload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'notificationId': instance.notificationId,
      'title': instance.title,
      'body': instance.body,
      'elementId': instance.elementId,
    };
