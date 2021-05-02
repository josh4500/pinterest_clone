import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String user;
  final String messageButton;

  const CustomListTile({Key key, this.icon, this.user, this.messageButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(200.0),
              ),
              child: Icon(
                this.icon,
                size: 40,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              this.user,
              maxLines: 1,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            this.messageButton != null
                ? Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        24.0,
                      ),
                    ),
                    child: Text(
                      'Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    ));
  }
}
