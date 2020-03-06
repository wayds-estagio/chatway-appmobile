import 'package:chatway/app/controllers/chat.controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarChat extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ChatController>(context);
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () async {
          await controller.removeSignalRConnection();

          Navigator.of(context).pop();
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Chat ",
            style: TextStyle(
              fontFamily: "Helvetica",
              fontSize: 24,
            ),
          ),
          Image.asset(
            'assets/images/logo-way-2.png',
            fit: BoxFit.contain,
            height: 24,
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.info),
          onPressed: () {},
        )
      ],
    );
  }
}
