import 'package:flutter/material.dart';

class BView extends StatefulWidget {
  @override
  _BViewState createState() => _BViewState();
}

class _BViewState extends State<BView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Container B'),
          RaisedButton(
            onPressed: ()=> print('hello'),
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}