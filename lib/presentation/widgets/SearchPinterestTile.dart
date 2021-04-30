import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/SearchImageTile.dart';

class SearchPinterestTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
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
            height: 10.0,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return SearchImageTile();
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              'Popular on Pinterest',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return SearchImageTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
