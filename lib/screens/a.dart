import 'package:flutter/material.dart';

class AView extends StatefulWidget {
  @override
  _AViewState createState() => _AViewState();
}

class _AViewState extends State<AView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Container A'),
          RaisedButton(
            onPressed: ()=> print('hello'),
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}