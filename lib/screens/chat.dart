import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                constraints:
                    BoxConstraints(minWidth: 200, maxWidth: 250, minHeight: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Hello",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
            Container(
                child: Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5),
                constraints:
                    BoxConstraints(minWidth: 200, maxWidth: 250, minHeight: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlue),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  "Hello jjhjh hjhjhj hghgh jghg ghj ghghjv mghfgg",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
