import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
