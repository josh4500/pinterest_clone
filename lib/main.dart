import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'presentation/screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
      /* set Status bar color in Android devices. */

      statusBarIconBrightness: Brightness.light,
      /* set Status bar icons color in Android devices.*/

      statusBarBrightness: Brightness.dark,
    ) /* set Status bar icon color in iOS. */
        );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest Clone',
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      home: Home(),
    );
  }
}
