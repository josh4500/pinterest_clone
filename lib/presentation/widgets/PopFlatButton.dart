import 'package:flutter/material.dart';

class PopFlatButton extends StatelessWidget {
  PopFlatButton({@required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.transparent;
      }
      return Colors.transparent;
    }

    EdgeInsetsGeometry getPadding(Set<MaterialState> states) {
      return EdgeInsets.all(0.0);
    }

    return TextButton(
        autofocus: false,
        clipBehavior: Clip.none,
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.resolveWith(getPadding),
          overlayColor: MaterialStateProperty.resolveWith(getColor),
        ),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            backgroundColor: Colors.transparent,
            color: Color(0xF2FFFFFF),
            fontSize: 22,
          ),
        ));
  }
}
