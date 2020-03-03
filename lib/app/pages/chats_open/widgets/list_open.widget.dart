import 'package:chatway/app/controllers/chats_open.controller.dart';
import 'package:chatway/app/shared/item_chat.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ListOpenWidget extends StatelessWidget {
  final String tabKey;

  const ListOpenWidget({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatsOpenController>(context);

    return RefreshIndicator(
      onRefresh: controller.refreshList,
      child: Observer(builder: (_) {
        return ListView.builder(
          key: PageStorageKey(tabKey),
          shrinkWrap: true,
          itemCount: controller.listOutput.length,
          itemBuilder: (_, index) {
            var item = controller.listOutput[index];

            return ItemChatWidget(
              index: index.toString(),
              message:
                  item.mensagens.isEmpty ? "" : item.mensagens.last.content,
              newMessages: item.mensagens.isEmpty ? 0 : item.mensagens.length,
              time: "00:00",
              title: item.motorista,
            );
          },
        );
      }),
    );
  }
}
