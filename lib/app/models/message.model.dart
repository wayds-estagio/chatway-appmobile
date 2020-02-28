import 'package:json_annotation/json_annotation.dart';

part 'message.model.g.dart';

@JsonSerializable()
class Message {
  String id;
  String content;
  DateTime timestamp;
  bool isYou;
  bool isRead;
  bool isSent;

  Message({
    this.id,
    this.content,
    this.timestamp,
    this.isYou = false,
    this.isRead = false,
    this.isSent = false,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return 'Message{id: $id, content: $content, timestamp: $timestamp, isYou: $isYou, isRead: $isRead, isSent: $isSent}';
  }
}
