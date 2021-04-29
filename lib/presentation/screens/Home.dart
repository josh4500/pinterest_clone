import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/CurveBottomNavBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(),
      ),
      bottomNavigationBar: CurveBottomNavBar(),
    );
  }
}
