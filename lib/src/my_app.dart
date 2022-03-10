import 'package:build_environment/src/core/home_bloc.dart';
import 'package:build_environment/src/core/home_event.dart';
import 'package:build_environment/src/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Build Environment',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: BlocProvider(
        create: (context) => HomeBloc()..add(HomeEventInit()),
        child: const Home(),
      ),
    );
  }
}