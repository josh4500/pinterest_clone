import 'package:flutter/material.dart';
import 'presentation/screens/Home.dart';
import 'presentation/screens/Search.dart';
import 'presentation/screens/Discover.dart';
import 'presentation/screens/Profile.dart';
import 'presentation/screens/ImageViewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinterest Clone',
      home: Home(),
    );
  }
}
