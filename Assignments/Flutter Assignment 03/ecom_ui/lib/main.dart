import 'package:ecom_ui/pages/productList.dart';
import 'package:ecom_ui/pages/products.dart';
import 'package:ecom_ui/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListSceeen(),
    );
  }
}
