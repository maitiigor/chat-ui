import 'package:flutter/material.dart';
import 'package:tuts/screens/Dashboard.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home page"),
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("CHATS")),
                Tab(child: Text("STATUS")),
                Tab(child: Text("CALLS")),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: Icon(Icons.search, size: 26.0),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: Icon(Icons.more_vert, size: 26.0),
                  onTap: () {},
                ),
              )
            ],
          ),
          drawer: Drawer(
            elevation: 5.0,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("james"),
                  accountEmail: Text("oluwatosinadesoyesalami@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 60.0,
                    child: Text('OS'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text("profile"),
                ),
                ListTile(
                  title: Text("Setings"),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("manage Order"),
                  onTap: () {},
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Dashboard(),
              Status(),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
