import 'package:flutter/material.dart';

class AccountListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const AccountListTile(
      {Key key, this.icon, this.title, this.subtitle, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            this.icon != null
                ? Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: this.color,
                    ),
                    child: Icon(this.icon),
                  )
                : SizedBox(
                    //width: 1.0,
                    ),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  this.subtitle,
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
            )
          ],
        ));
  }
}
