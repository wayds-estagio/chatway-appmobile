import 'package:flutter/material.dart';

class ItemHelp extends StatelessWidget {
  final String text;

  const ItemHelp({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Container(
        child: Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.body2),
      ),
      onTap: () {
        // Navigator.of(context).pushNamed('/Chat');
        Navigator.of(context).pushNamed(
          '/chat',
          arguments: text,
        );
      },
    );
  }
}
