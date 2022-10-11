import 'package:flutter/material.dart';
import './WhatsAppHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: const Color(0xff075e54),
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 42, 64, 68),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 13, 35, 43),
        secondaryHeaderColor: Color.fromARGB(255, 0, 255, 210),
      ),
      home: WhatsAppHome(),
    );
  }
}
