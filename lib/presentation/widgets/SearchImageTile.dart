import 'package:flutter/material.dart';

class SearchImageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.5,
      height: _size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
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
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
