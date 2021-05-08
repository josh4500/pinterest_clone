import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/screens/ImageViewer.dart';
import 'package:pinterest_clone/presentation/widgets/ImageCard.dart';

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

  List<String> _imageContents = [
    'Strange Habours Film | Black Panther 1',
    'Strange Habours Film | Black Panther 2',
    'Strange Habours Film | Black Panther 3',
    'Strange Habours Film | Black Panther 4',
    'Strange Habours Film | Black Panther 5',
    'Strange Habours Film | Black Panther 6',
    'Strange Habours Film | Black Panther 7',
    'Strange Habours Film | Black Panther 8',
    'Strange Habours Film | Black Panther 9',
  ];
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
              GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: _imageContents.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.height / 1000,
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ImageViewer();
                      }));
                    },
                    child: ImageCard(
                      text: _imageContents[index],
                      icon: Icons.more_horiz,
                      imageUri: 'assets/images/testImage1.jpeg',
                    ),
                  );
                },
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
