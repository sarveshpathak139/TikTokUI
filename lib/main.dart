import 'package:flutter/material.dart';
import 'package:tiktok/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(
        textTheme: Theme.of(context)
        .textTheme
        .apply(bodyColor: Colors.white,displayColor: Colors.white),
      ),
      home: Home(),
    );
  }
}

