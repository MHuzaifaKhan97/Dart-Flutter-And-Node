import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 01',
        home: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name: Muhammad Huzaifa Khan'),
                Text('Email: huzaifanadir1997@gmail.com')
              ],
            ),
          ),
        ));
  }
}
