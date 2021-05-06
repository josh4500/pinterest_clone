import 'package:flutter/material.dart';

enum Filter { All, Comments, Photos }

class ModalButtomSheet extends StatefulWidget {
  @override
  _ModalButtomSheetState createState() => _ModalButtomSheetState();
}

class _ModalButtomSheetState extends State<ModalButtomSheet> {
  Filter SelectedFilter = Filter.All;
  void selectFilter(Filter type) {
    setState(() {
      SelectedFilter = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _size.height * 0.35,
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                16.0,
              ),
              topRight: Radius.circular(
                16.0,
              ))),
      padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filter your updates'),
          GestureDetector(
            onTap: () {
              selectFilter(Filter.All);
              //setState(() {});
            },
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SelectedFilter == Filter.All
                      ? Icon(
                          Icons.done,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              selectFilter(Filter.Comments);
              //setState(() {});
            },
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Comments',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SelectedFilter == Filter.Comments
                      ? Icon(
                          Icons.done,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              selectFilter(Filter.Photos);
              //setState(() {});
            },
            child: Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photos',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SelectedFilter == Filter.Photos
                      ? Icon(
                          Icons.done,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 60.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                  child: Center(
                    child: Text(
                      'Close',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
