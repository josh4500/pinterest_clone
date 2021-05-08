import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/ImageCard.dart';
import 'package:pinterest_clone/presentation/widgets/SearchBar.dart';
import 'package:pinterest_clone/presentation/widgets/ThreeImageCollage.Dart';

import '../widgets/PopFlatButton.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _tuneModalBottomSheetMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return new Container(
          height: MediaQuery.of(context).size.height * 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(
                        child: IconButton(
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
                    )),
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
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 25.0, 15.0, 25.0),
                child: Text(
                  'This pin is inspired by your recent activity',
                  style: TextStyle(
                    backgroundColor: Colors.transparent,
                    color: Color(0xF2FFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: RotatedBox(
            quarterTurns: 1,
            child: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () {},
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/testImage1.jpeg',
                  ),
                  radius: 55.0,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'It\'s really josh',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1 follower',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '0 following',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SliverAppBar(
          title: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Colors.white12,
            ),
            child: SearchBar(
              leading: Icons.search,
              placeholder: 'Search Your pins',
              fontSize: 14,
            ),
          ),
          actions: [
            Flexible(
              child: IconButton(
                  icon: Icon(Icons.tune_outlined),
                  onPressed: () {
                    _tuneModalBottomSheetMenu(context);
                  }),
            ),
            Flexible(
                child: IconButton(icon: Icon(Icons.add), onPressed: () {})),
          ],
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return ThreeImageCollage(title: "Hello", imageUri: [
              'assets/images/testImage1.jpeg',
              'assets/images/testImage1.jpeg',
              'assets/images/testImage1.jpeg',
            ]);
          }, childCount: 7),
        )
      ],
    );
  }
}
