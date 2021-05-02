import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/widgets/CustomListTile.dart';

class MessagesScreen extends StatelessWidget {
  List<int> _list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        top: 70.0,
        right: 12,
        left: 12,
      ),
      child: Column(
        children: [
          Text(
            'Share ideas with \n     your friends',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
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
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Text(
                    'Search by name or email',
                  )
                ],
              ),
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
                print('${_list.length} omo');
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
