import 'package:build_environment/src/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Build Environment',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const Home(),
    );
  }
}