import 'package:flutter/material.dart';
import 'package:saving_traget/views/index.dart';
import 'package:saving_traget/views/landing.dart';
import 'package:saving_traget/views/login.dart';
import 'package:saving_traget/views/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savings Target',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      routes: {
        '/landing': (context) => Landing(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/': (context) => Index()
      },
      initialRoute: '/',
    );
  }
}