import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/CustomListTile.dart';
import 'package:pinterest_clone/presentation/widgets/SearchBar.dart';

class MessagesScreen extends StatelessWidget {
  final List<int> _list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 70.0,
        right: 12,
        left: 12,
      ),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 180,
            ),
            child: Text(
              'Share ideas with your friends',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              child: SearchBar(
                  leading: Icons.search,
                  placeholder: 'Search by name or email'),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: _list.length,
              itemBuilder: (context, index) {
                if (index == _list.length - 1) {
                  return CustomListTile(
                    icon: Icons.group,
                    user: 'Sync contacts',
                  );
                }
                return CustomListTile(
                  icon: Icons.person,
                  user: 'Uchiha $index',
                  messageButton: 'Message',
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
