import 'package:flutter/material.dart';
import 'presentation/screens/HomeScreen.dart';
import 'presentation/screens/SearchScreen.dart';
import 'presentation/screens/DiscoverScreen.dart';
import 'presentation/screens/ProfileScreen.dart';
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
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
