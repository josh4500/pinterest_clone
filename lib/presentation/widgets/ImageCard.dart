import 'package:flutter/material.dart';
import 'PopFlatButton.dart';

class ImageCard extends StatelessWidget {
  ImageCard(
      {@required this.icon, @required this.text, @required this.imageUri});

  final IconData icon;
  final String text;
  final String imageUri;
  void _modalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height * (1.8 / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close_rounded,
                            size: 35.0,
                            color: Color(0x82FFFFFF),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Options',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xF2FFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      PopFlatButton(text: 'Download Image'),
                      PopFlatButton(text: 'Hide Pin'),
                      PopFlatButton(text: 'Report pin'),
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                  child: Text(
                    'This pin is inspired by your recent activity',
                    style: TextStyle(
                      backgroundColor: Colors.transparent,
                      color: Color(0xF2FFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                child: Image.asset(
                  imageUri,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _modalBottomSheetMenu(context);
                },
                child: Icon(icon),
              )
            ],
          ),
        ],
      ),
    );
  }
}
