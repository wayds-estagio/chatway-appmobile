import 'package:chatway/app/controllers/chat.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

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
    final controller = Provider.of<ChatController>(context);

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Observer(builder: (_) {
          return InfoMessage(
            text: "Em breve você será atendido",
            visible: !controller.isAttended,
          );
        }),
        ListMessage(),
        InputTextMessage(),
      ],
    );
  }
}
