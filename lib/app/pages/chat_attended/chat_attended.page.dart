import 'package:flutter/material.dart';

import 'widgets/app_bar_chat.widget.dart';
import 'widgets/input_message.widget.dart';
import 'widgets/list_message.widget.dart';

class ChatAttendedPage extends StatelessWidget {
  final String data;

  const ChatAttendedPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarChat(),
      body: chatPage(context),
    );
  }

  Widget chatPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        ListMessage(chatId: data),
        InputTextMessage(chatId: data),
      ],
    );
  }
}
