import 'package:flutter/material.dart';

class ItemChatWidget extends StatelessWidget {
  final String id;
  final String index;
  final String title;
  final String message;
  final String time;
  final int newMessages;

  const ItemChatWidget({
    Key key,
    @required this.id,
    @required this.title,
    @required this.message,
    @required this.time,
    @required this.newMessages,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      dense: false,
      title: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 14),
      ),
      leading: Container(
        width: 60,
        height: 70,
        child: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Theme.of(context).accentColor,
              child: Text(
                index,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              right: -10,
              top: 30,
              child: Container(
                height: 28,
                width: 28,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    newMessages.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 25,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Center(
              child: Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        print("Cliquei aqui");

        Navigator.of(context).pushNamed(
          '/chatAttended',
          arguments: id,
        );
      },
    );
  }
}
