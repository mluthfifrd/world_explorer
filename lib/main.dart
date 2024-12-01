import 'package:flutter/material.dart';
import 'package:world_explorer/pages/login_sceen.dart';

void main() => runApp(const MyApp());

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Explorer',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const LoginScreen(),
    );
  }
}
