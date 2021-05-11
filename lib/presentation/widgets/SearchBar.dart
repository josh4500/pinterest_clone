import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({this.leading, this.placeholder, this.trailing, this.fontSize});

  final IconData leading;
  final String placeholder;
  final IconData trailing;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Icon(
            leading,
            color: Color(0x5FFFFFFF),
          ),
        ),
        Expanded(
          child: Text(
            placeholder,
            style: TextStyle(
              color: Color(0x5FFFFFFF),
              fontSize: fontSize,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Icon(
            trailing,
            color: Color(0x5FFFFFFF),
          ),
        ),
      ],
    );
  }
}
