import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/screens/DiscoverScreen.dart';
import 'package:pinterest_clone/presentation/screens/ProfileScreen.dart';
import 'package:pinterest_clone/presentation/screens/SearchScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
      ),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.message,
      ),
      label: 'Discover',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.account_circle,
      ),
      label: 'Profile',
    ),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          SearchScreen(),
          DiscoverScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 35.0, right: 35.0, bottom: 25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(35.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            items: _items,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('home....'),
      ),
    );
  }
}
