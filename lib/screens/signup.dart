import 'package:flutter/material.dart';
import 'package:tuts/screens/login.dart';
import 'image_banner.dart';

class SignUp extends StatefulWidget {
  const SignUp();

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Center(
        child: Column(
          children: [
            ImageBanner("assets/images/money-key.jpg"),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Flll in your information"),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "email field",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Password field",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Confirm Password field",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              width: 200,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff01A0c7),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Material(
                child: MaterialButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0xff01A0c7)),
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login(
                                  title: "Login",
                                )));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
