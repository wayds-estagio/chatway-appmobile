import 'package:flutter/material.dart';

class InfoMessage extends StatelessWidget {
  final String text;
  final bool visible;

  const InfoMessage({Key key, @required this.text, @required this.visible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 800),
      color: Theme.of(context).accentColor,
      height: visible ? 45 : 0,
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
