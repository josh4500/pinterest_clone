import 'package:flutter/material.dart';

class UnSplashListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  const UnSplashListTile({Key key, this.text, this.icon, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.all(0.0),
        minVerticalPadding: 0.0,
        leading: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: icon != null ? Icon(icon) : SizedBox(),
        onTap: onTap,
      ),
    );
  }
}
