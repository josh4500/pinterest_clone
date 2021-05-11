import 'package:flutter/material.dart';

class AddAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left),
        ),
        title: Text(
          'Add account',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/obito.jpg'),
              ),
              title: Text(
                'Obito Uchiha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.done,
                color: Colors.white38,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Log in or create a new account',
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 4.0, fontSize: 16.0),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Create a business account',
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 4.0, fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
