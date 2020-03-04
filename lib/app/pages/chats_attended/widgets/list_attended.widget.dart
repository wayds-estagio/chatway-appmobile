import 'package:chatway/app/shared/item_chat.widget.dart';
import 'package:flutter/material.dart';

class ListAttendedWidget extends StatelessWidget {
  final String tabKey;

  const ListAttendedWidget({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: PageStorageKey(tabKey),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (_, index) {
        return ItemChatWidget(
          id: "1",
          index: index.toString(),
          message: "Mensagem automatica $index",
          newMessages: index,
          time: "00:00",
          title: "Motorista $index",
        );
      },
    );
  }
}
