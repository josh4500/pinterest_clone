import 'package:flutter/material.dart';
import 'presentation/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinterest Clone',
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: Home(),
    );
  }
}
