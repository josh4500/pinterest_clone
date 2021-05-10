import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/UnSplashListTile.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(12.0, 26.0, 12.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.white38,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: _size.width / 3),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text('Personal information'),
                SizedBox(
                  height: 10.0,
                ),
                UnSplashListTile(
                  text: 'Edit profile',
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'Account settings',
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'Notifications',
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'Privacy & data',
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Support'),
                SizedBox(
                  height: 10.0,
                ),
                UnSplashListTile(
                  text: 'Get help',
                  icon: Icons.north_east,
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'Terms & privacy',
                  icon: Icons.north_east,
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'About',
                  icon: Icons.chevron_right,
                  onTap: () {},
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Actions'),
                SizedBox(
                  height: 10.0,
                ),
                UnSplashListTile(
                  text: 'Add account',
                  onTap: () {},
                ),
                UnSplashListTile(
                  text: 'Log out',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
