import 'package:flutter/material.dart';

import 'widgets/list_open.widget.dart';

class ChatsOpenPage extends StatelessWidget {
  final String tabKey;

  const ChatsOpenPage({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListOpenWidget(tabKey: tabKey),
    );
  }
}
