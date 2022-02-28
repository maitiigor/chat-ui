import 'package:flutter/material.dart';
import 'package:tuts/screens/home_page.dart';
import 'package:tuts/screens/image_banner.dart';
import 'package:tuts/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key key, this.title}) : super(key: key);

  final String title;
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "email field",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "pasword field",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
      color: Color(0xff01A0c7),
      child: MaterialButton(
        minWidth: 300.0,
        padding: EdgeInsets.all(20),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Container(
      child: Center(
        child: Column(
          children: [
            ImageBanner("assets/images/money-key.jpg"),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: emailField,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: passwordField,
            ),
            Container(
              child: loginButton,
            ),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Color(0xff01A0c7)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
