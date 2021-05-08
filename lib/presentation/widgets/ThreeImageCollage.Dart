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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: Colors.white12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        imageUri[0],
                        fit: BoxFit.cover,
                        color: Colors.white24,
                        colorBlendMode: BlendMode.overlay,
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).backgroundColor,
                      height: 2,
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: imageUri[1] != null && imageUri[1] != ''
                                ? Image.asset(
                                    imageUri[1],
                                    fit: BoxFit.cover,
                                    color: Colors.white24,
                                    colorBlendMode: BlendMode.overlay,
                                  )
                                : Container(),
                          ),
                          Divider(
                            color: Theme.of(context).backgroundColor,
                            height: 2,
                          ),
                          Expanded(
                            child: imageUri[2] != null && imageUri[2] != ''
                                ? Image.asset(
                                    imageUri[2],
                                    color: Colors.white24,
                                    fit: BoxFit.cover,
                                    colorBlendMode: BlendMode.overlay,
                                  )
                                : Container(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '10 Pins',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2y',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
