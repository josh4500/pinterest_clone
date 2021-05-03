import 'package:flutter/material.dart';

class UpdatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Container();
        },
      ),
    );
  }
}
