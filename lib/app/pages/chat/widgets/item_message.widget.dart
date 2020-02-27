import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ItemMessage extends StatelessWidget {
  final String content;
  final DateTime timestamp;
  final bool isYou;
  final bool isRead;
  final bool isSent;
  final double fontSize;

  ItemMessage({
    this.content,
    this.timestamp,
    this.isYou,
    this.isRead = false,
    this.isSent = true,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment:
          isYou ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                    blurRadius: 1.0)
              ],
              color: isYou ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: isYou
                  ? BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(10.0),
                    )
                  : BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(20.0),
                    ),
            ),
            constraints: BoxConstraints(
              minWidth: 100.0,
              maxWidth: 280.0,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(
                    minWidth: 100.0,
                  ),
                  child: Text(
                    content,
                    style: TextStyle(
                      color: isYou ? Colors.white : Colors.black,
                      fontSize: fontSize,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 100.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            DateFormat('HH:mm').format(timestamp),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          isYou ? _getIcon(context) : Container()
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _getIcon(BuildContext context) {
    if (!isSent) {
      return Icon(
        Icons.check,
        size: 18.0,
        color: Colors.grey,
      );
    }
    return Icon(
      Icons.done_all,
      size: 18.0,
      color: isYou
          ? isRead ? Colors.white : Colors.grey
          : isRead ? Theme.of(context).primaryColor : Colors.grey,
    );
  }
}
