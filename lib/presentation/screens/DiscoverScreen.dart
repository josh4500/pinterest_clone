import 'package:flutter/material.dart';
import 'package:pinterest_clone/presentation/screens/MessagesScreen.dart';
import 'package:pinterest_clone/presentation/screens/UpdatesScreen.dart';
import 'package:pinterest_clone/presentation/widgets/modalBottomSheet.dart';

class DiscoverScreen extends StatefulWidget {
  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with SingleTickerProviderStateMixin {
  double _opacity = 1.0;
  TabController _tabController;
  List<Tab> _tabs = [
    Tab(
      child: Text(
        'Updates',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Tab(
      child: Text(
        'Messages',
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        setState(() {
          _opacity = 0.0;
        });
      } else {
        setState(() {
          _opacity = 1.0;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                tabs: _tabs,
                controller: _tabController,
                isScrollable: true,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                  color: Colors.white,
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
              ),
              SizedBox(
                width: 20.0,
              ),
              Opacity(
                  opacity: _opacity,
                  child: IconButton(
                    icon: Icon(Icons.tune),
                    onPressed: () {
                      showButtomSheet(context);
                    },
                  ))
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                UpdatesScreen(),
                MessagesScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }

  showButtomSheet(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    showModalBottomSheet(
        enableDrag: false,
        backgroundColor: Colors.black,
        context: context,
        builder: (context) {
          return ModalButtomSheet();
        });
  }
}
