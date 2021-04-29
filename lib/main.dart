import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
        label: 'k'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
        label: 'w'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
        label: 'e'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
        label: 'u'),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.ac_unit,
          color: Colors.greenAccent,
        ),
        label: '9'),
  ];
  int _counter = 0;
  bool _isVisible = false;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(70.0))),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(right: 20.0, bottom: 20.0, left: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: BottomNavigationBar(
            backgroundColor: Colors.greenAccent,
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            items: _items,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
