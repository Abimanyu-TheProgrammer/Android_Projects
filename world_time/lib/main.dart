import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/choosing_time.dart';
import 'pages/loading.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
        '/' : (context) => Loading(),
        '/home' : (context) => Home(),
        '/location' : (context) => ChoosingTime()
      },
  ));
}

