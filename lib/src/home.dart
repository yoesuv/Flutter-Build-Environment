import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: Center(
        child: Text('Build Environment',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          )),
      ),
    );

  }
}
