import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // CONTAINER
        // body: Container(
        //   alignment: Alignment.center,
        //   height: 200,
        //   width: 200,
        //   color: Colors.red,
        //   child: Text(
        //     'Container\'s Child',
        //     style: TextStyle(fontSize: 22, color: Colors.white),
        //   ),
        // ),

        //  COLUMN
        // body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // children: [
        //   Text('Child 1'),
        //   SizedBox(height: 10),
        //   Text('Child 2'),
        //   Text('Child 3'),
        //   SizedBox(height: 10),
        //   Text('Child 4'),
        // ]),

        // ROW
        // body: Container(
        //   height: 500,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Text('Child 1'),
        //       // SizedBox(width: 10),
        //       Text('Child 2'),
        //       Text('Child 3'),
        //       // SizedBox(width: 10),
        //       Text('Child 4'),
        //     ],
        //   ),
        // ),

        // SINGLE CHILD SCROLL VIEW
        // body: SingleChildScrollView(
        //   child: Center(
        //     child: Column(
        //       children: [
        //         Text('Single Child Scroll View'),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //         SizedBox(height: 30),
        //         Container(
        //           height: 100,
        //           width: 100,
        //           color: Colors.purple,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),

        //SIMPLE LOGIN FORM
        appBar: AppBar(title: Text('Login Form'), centerTitle: true),
        body: Container(
          height: 400,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  width: 150,
                  child: TextField(),
                ),
                SizedBox(height: 10),
                Container(
                  width: 150,
                  child: TextField(),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
