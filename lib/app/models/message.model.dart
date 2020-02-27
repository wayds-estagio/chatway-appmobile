import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.model.g.dart';

@JsonSerializable()
class Message {
  final String id;
  final String content;
  final DateTime timestamp;
  final bool isYou;
  final bool isRead;
  final bool isSent;

  Message({
    this.id,
    @required this.content,
    @required this.timestamp,
    @required this.isYou,
    @required this.isRead,
    @required this.isSent,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return 'Message{id: $id, content: $content, timestamp: $timestamp, isYou: $isYou, isRead: $isRead, isSent: $isSent}';
  }
}
