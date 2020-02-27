import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chat.controller.dart';
import 'widgets/app_bar_chat.widget.dart';
import 'widgets/info_message.widget.dart';
import 'widgets/input_message.widget.dart';
import 'widgets/list_message.widget.dart';

class ChatPage extends StatelessWidget {
  final String data;

  const ChatPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatController>(context);
    controller.setHelpMessage(data);

    return Scaffold(
      appBar: AppBarChat(),
      body: chatPage(context),
    );
  }

  Widget chatPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        InfoMessage(
          text: "Em breve você será atendido",
          visible: true,
        ),
        ListMessage(),
        InputTextMessage(),
      ],
    );
  }
}
