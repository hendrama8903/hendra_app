import 'package:flutter/material.dart';
import 'package:hendra_app/utils/colors.dart';
import 'package:hendra_app/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hendra Apps Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: greenColor),
        useMaterial3: true,
      ),
      home: const LoginView(),
    );
  }
}
