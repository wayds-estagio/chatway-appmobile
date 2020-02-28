// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    id: json['id'] as String,
    content: json['content'] as String,
    sender: json['sender'] as String,
    receiver: json['receiver'] as String,
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
    isRead: json['isRead'] as bool,
    isSent: json['isSent'] as bool,
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'time': instance.time?.toIso8601String(),
      'isRead': instance.isRead,
      'isSent': instance.isSent,
    };
