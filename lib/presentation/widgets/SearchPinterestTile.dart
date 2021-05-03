import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/SearchImageTile.dart';

class SearchPinterestTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        LikedCategory(),
        LikedCategory(),
        LikedCategory(),
      ],
    );
  }
}

class LikedCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
      child: Column(
        children: [
          Center(
            child: Text(
              'Ideas for you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GridView.count(
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: MediaQuery.of(context).size.height / 400,
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              SearchImageTile(),
              SearchImageTile(),
              SearchImageTile(),
              SearchImageTile(),
              SearchImageTile(),
            ],
          ),
        ],
      ),
    );
  }
}
