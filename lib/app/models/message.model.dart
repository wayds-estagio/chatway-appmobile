import 'package:json_annotation/json_annotation.dart';

part 'message.model.g.dart';

@JsonSerializable()
class Message {
  String id;
  String content;
  String sender;
  String receiver;
  DateTime time;
  bool isRead;
  bool isSent;

  Message({
    this.id,
    this.content,
    this.sender,
    this.receiver,
    this.time,
    this.isRead = false,
    this.isSent = false,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @override
  String toString() {
    return 'Message{id: $id, content: $content, sender: $sender, receiver: $receiver, time: $time isRead: $isRead, isSent: $isSent}';
  }
}
