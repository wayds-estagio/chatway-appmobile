import 'package:flutter/material.dart';

import 'widgets/list_attended.widget.dart';

class ChatsAttendedPage extends StatelessWidget {
  final String tabKey;

  const ChatsAttendedPage({Key key, this.tabKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListAttendedWidget(tabKey: tabKey),
    );
  }
}
