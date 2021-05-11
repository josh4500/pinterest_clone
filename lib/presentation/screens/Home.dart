import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pinterest_clone/presentation/screens/DiscoverScreen.dart';
import 'package:pinterest_clone/presentation/screens/ProfileScreen.dart';
import 'package:pinterest_clone/presentation/screens/SearchScreen.dart';
import 'package:pinterest_clone/presentation/screens/HomeScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _isVisible = true;
    _scrollController = new ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
      print('Hello');
    });
  }

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
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    HomeScreen(),
                    SearchScreen(),
                    DiscoverScreen(),
                    ProfileScreen()
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: _isVisible ? 1.0 : 0.0,
          child: Container(
            margin: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 30.0),
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
              child: BottomNavigationBar(
                elevation: 1.0,
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
        ),
      ),
    );
  }
}
