import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(  
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.yellow,
    );
  }
}