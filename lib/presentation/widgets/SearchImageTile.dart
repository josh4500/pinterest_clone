import 'package:flutter/material.dart';

class SearchImageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Color(0xC1000000), BlendMode.luminosity),
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/jiraiya.png',
          ),
        ),
      ),
      child: Center(
        child: Text(
          'Jiraiya Sensei',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
    );
  }
}
