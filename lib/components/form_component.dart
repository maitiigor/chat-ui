import 'package:flutter/material.dart';

class FormComponent {
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
      onPressed: () {},
      child: Text(
        "Login",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
