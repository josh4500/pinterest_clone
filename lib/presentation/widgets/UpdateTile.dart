import 'package:flutter/material.dart';

class UpdateTile extends StatelessWidget {
  final String updateDescription;
  final String updateDay;
  final List<String> updateImageUrl;

  const UpdateTile(
      {Key key, this.updateDescription, this.updateDay, this.updateImageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      margin: EdgeInsets.only(
        top: 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: this.updateDescription,
              ),
              TextSpan(
                  text: ' ${this.updateDay}',
                  style: TextStyle(color: Colors.grey.shade400))
            ]),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            height: _size.height * 0.25,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      this.updateImageUrl[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 1.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      this.updateImageUrl[1],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
