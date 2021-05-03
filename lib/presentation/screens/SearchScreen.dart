import 'package:flutter/material.dart';

import 'package:pinterest_clone/presentation/widgets/SearchPinterestTile.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
            padding: EdgeInsets.all(8.0),
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Colors.white12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xEFFFFFFF),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Search your pins',
                    style: TextStyle(
                      color: Color(0x5FFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.camera_alt,
                  color: Color(0xEFFFFFFF),
                ),
              ],
            ),
          ),
          Expanded(child: SearchPinterestTile()),
        ],
      ),
    );
  }
}
