import 'package:build_environment/src/my_app.dart';
import 'package:build_environment/src/utils.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final flavor = await flavorConfig();
  debugPrint('Main # flavor $flavor');
  runApp(const MyApp());
}
