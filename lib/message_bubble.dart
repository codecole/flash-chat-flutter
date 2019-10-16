import 'package:flutter/material.dart';


class Messagebubble extends StatelessWidget {
  Messagebubble({this.sender, this.text, this.isMe});
  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            sender,
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          Material(
              borderRadius: BorderRadius.only(
                  topLeft: isMe ? Radius.circular(30.0) : Radius.circular(0.0),
                  topRight: isMe ? Radius.circular(0.0): Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
              elevation: 5.0,
              color: isMe ? Colors.lightBlue : Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(text),
              )),
        ],
      ),
    );

  }
}