import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GestureDetector(
        child: Column(
          children: [
            Container(
                child: Row(
              children: [
                Align(
                  child: Container(
                      padding: EdgeInsets.only(left: 20, top: 35),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/250?image=9'),
                          )),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 10,
                              bottom: 5,
                            ),
                            child: Text("My Status",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                )),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "click to add status",
                                style: TextStyle(color: Colors.black)),
                          ])),
                        ],
                      ),
                    )),
              ],
            )),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    "Recent Update",
                    style: TextStyle(fontFamily: "RobotoThin"),
                  ),
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(top: 15),
                    decoration: DottedDecoration(
                        shape: Shape.circle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Franklin",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
