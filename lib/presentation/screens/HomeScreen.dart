import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/screens/DiscoverScreen.dart';
import 'package:pinterest_clone/presentation/screens/ProfileScreen.dart';
import 'package:pinterest_clone/presentation/screens/SearchScreen.dart';
import 'package:pinterest_clone/presentation/ImageCard.dart';

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
    return SafeArea(
      child: Scaffold(
        extendBody: true,
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
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  List<Widget> _tab = [
    Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'All',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Following',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Naruto',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
    Tab(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'Aizen Sosuke',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: TabBar(
          physics: BouncingScrollPhysics(),
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.values[1],
          controller: _controller,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white60,
          ),
          tabs: _tab,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TabBarView(
            physics: BouncingScrollPhysics(),
            controller: _controller,
            children: [
              GridView.count(
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.height / 1000,
                children: [
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                  ImageCard(
                      text: 'Strange Habours Film | Black Panther',
                      icon: Icons.more_horiz,
                      imageUri: 'assets/images/testImage1.jpeg'),
                  ImageCard(
                    text: 'Strange Habours Film | Black Panther',
                    icon: Icons.more_horiz,
                    imageUri: 'assets/images/testImage1.jpeg',
                  ),
                ],
              ),
              Center(child: Text('100')),
              Center(child: Text('100')),
              Center(child: Text('100')),
            ],
          ),
        ),
      ),
    );
  }
}
