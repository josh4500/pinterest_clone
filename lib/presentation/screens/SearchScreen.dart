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
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black26,
                prefixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.photo_camera),
                  onPressed: () {},
                ),
                border: InputBorder.none,
                hintText: 'Search for ideas',
              ),
            ),
          ),
          Expanded(child: SearchPinterestTile()),
        ],
      ),
    );
  }
}
