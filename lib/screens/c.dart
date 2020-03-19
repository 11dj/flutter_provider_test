import 'package:flutter/material.dart';

class CView extends StatefulWidget {
   @override
   _CViewState createState() => _CViewState();
 }
 
 class _CViewState extends State<CView> {
   @override
   Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Container C'),
          RaisedButton(
            onPressed: ()=> print('hello'),
            child: Text('Hello'),
          ),
        ],
      ),
    );
   }
 }