import 'package:chatway/app/models/message.model.dart';

class Chat {
  String id = "";
  List<Message> messages = [
    Message(
        content: "has",
        timestamp: DateTime.now(),
        isYou: true,
        isRead: false,
        isSent: false)
  ];
  String sender = "";
  String receiver = "";
  String filial = "";

  Chat({
    this.id,
    this.messages,
    this.sender,
    this.receiver,
    this.filial,
  });
}
