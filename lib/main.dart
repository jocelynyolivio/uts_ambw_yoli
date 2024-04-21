import 'package:flutter/material.dart';
import 'homepage.dart';
// import 'first_tab.dart';
// import 'second_tab.dart';
// import 'third_tab.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const HomePage(),
    );
  }
}