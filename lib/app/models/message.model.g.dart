// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    id: json['id'] as String,
    content: json['content'] as String,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    isYou: json['isYou'] as bool,
    isRead: json['isRead'] as bool,
    isSent: json['isSent'] as bool,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'timestamp': instance.timestamp?.toIso8601String(),
      'isYou': instance.isYou,
      'isRead': instance.isRead,
      'isSent': instance.isSent,
    };
