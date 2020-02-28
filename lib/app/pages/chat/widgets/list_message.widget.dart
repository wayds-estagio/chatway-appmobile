import 'package:chatway/app/controllers/chat.controller.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'item_message.widget.dart';

class ListMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatController>(context);

    return Flexible(
      flex: 1,
      child: Observer(
        builder: (_) {
          if (controller.store.value == null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                CircularProgressIndicator(),
              ],
            );
          }

          return ListView.builder(
            reverse: true,
            itemCount: controller.listFiltered.length,
            itemBuilder: (context, index) {
              var item = controller.listFiltered[index];

              return ItemMessage(
                content: item.content,
                timestamp: item.time,
                isYou: Consts.user.id == item.sender,
                isRead: item.isRead,
                isSent: item.isSent,
                fontSize: 16.0,
              );
            },
          );
        },
      ),
    );
  }
}
