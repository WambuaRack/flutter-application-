import 'package:flutter/material.dart';
import 'package:kitengela/config/approutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      initialRoute: Approutes.login,
      routes: Approutes.pages,
    );
  }
}
