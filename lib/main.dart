import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/screens/a.dart';
import 'package:provider_test/screens/b.dart';
import 'package:provider_test/screens/c.dart';

import 'package:provider_test/models/a.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  int _counter = 0;
  int _currentIndex = 0;
  final List<Widget> _children = [
    AView(),
    BView(),
    CView(),
  ];

  @override
  void didChangeDependencies() {
    print('Child widget: didChangeDependencies(), counter = $_counter');
    super.didChangeDependencies();
  }

  void _incrementCounter() {
    print(_counter);
    setState(() {
      _counter++;
    });
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

 bar(title) {
   return BottomNavigationBarItem(
           icon: Icon(Icons.home),
           title: Text(title)
         );
 }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderA>(create: (context) => ProviderA())
        ],
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title),),
        body: _children[_currentIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          bar('AAA'),         
          bar('BBB'),         
          bar('CCC'),         
        ],
      ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(title: Text(widget.title),),
    //   body: _children[_currentIndex],
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: Icon(Icons.add),
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //    onTap: onTabTapped,
    //    currentIndex: _currentIndex,
    //    items: [
    //      bar('AAA'),         
    //      bar('BBB'),         
    //      bar('CCC'),         
    //    ],
    //  ),
    // );
  }
}
