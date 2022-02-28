import 'package:flutter/material.dart';
import 'chat.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://picsum.photos/250?image=9'))),
            width: 50,
            height: 50,
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          contentPadding: EdgeInsets.all(0),
                          insetPadding: EdgeInsets.all(0),
                          backgroundColor: Color.fromRGBO(250, 220, 255, 0),
                          content: Container(
                              width: 250,
                              height: 300,
                              margin: EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 250,
                                    height: 250,
                                    margin: EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://picsum.photos/250?image=9'),
                                    )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    width: 250,
                                    decoration:
                                        BoxDecoration(color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            child: GestureDetector(
                                          child: Icon(
                                            Icons.comment,
                                            color: Colors.blue,
                                          ),
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Chat()));
                                          },
                                        )),
                                        Container(
                                            child: GestureDetector(
                                          child: Icon(Icons.phone,
                                              color: Colors.blue),
                                        )),
                                        Container(
                                            child: GestureDetector(
                                          child: Icon(Icons.info,
                                              color: Colors.blue),
                                        )),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ));
              },
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Goodluck Jonathan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Text("message"),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

openChat() {}
