import 'package:flutter/material.dart';

class ThreeImageCollage extends StatelessWidget {
  ThreeImageCollage(
      {@required this.title, this.pinNum, @required this.imageUri});

  final String title;
  final int pinNum;
  final List<String> imageUri;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 100,
                      right: 80,
                      child: Image.asset(
                        imageUri[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 80,
                      bottom: 50,
                      right: 0,
                      child: Image.asset(
                        imageUri[1],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 80,
                      bottom: 100,
                      right: 0,
                      child: Image.asset(
                        imageUri[2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                // child: Image.asset(
                //   imageUri[1],
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
