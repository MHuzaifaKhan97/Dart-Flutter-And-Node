import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<dynamic> list = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen')),
      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Container(
        //       color: Colors.red,
        //       height: 200,
        //       width: 200,
        //       margin: EdgeInsets.only(top: 10),
        //     ),
        //     Container(
        //       color: Colors.green,
        //       height: 200,
        //       width: 200,
        //       margin: EdgeInsets.only(top: 10),
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       height: 200,
        //       width: 200,
        //       margin: EdgeInsets.only(top: 10),
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //       height: 200,
        //       width: 200,
        //       margin: EdgeInsets.only(top: 10),
        //     ),

        //    ],
        // ),

        child: Column(
          children: [
            Container(
              height: 210,
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.red,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(top: 10),
                  ),
                ],
              ),
            ),
            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(list.length, (index) {
                  return Container(
                    color: Colors.red,
                    child: Text(list[index].toString()),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
