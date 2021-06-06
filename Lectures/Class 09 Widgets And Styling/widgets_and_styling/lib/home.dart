import 'package:flutter/material.dart';
import 'package:widgets_and_styling/app.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // BOX DECORATION, ALIGN , LINEAR GRADIENT & MORE

      // body: Align(
      //   alignment: Alignment.bottomRight,
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     // padding: EdgeInsets.all(20),
      //     padding: EdgeInsets.only(top: 20, left: 30),
      //     margin: EdgeInsets.only(top: 50),
      //     decoration: BoxDecoration(
      //       // color: Colors.red,
      //       gradient: LinearGradient(colors: [Colors.purple, Colors.yellow]),
      //       borderRadius: BorderRadius.circular(25),
      //     ),
      //     child: Text(
      //       'Box Decoration',
      //       style: TextStyle(color: Colors.white, fontSize: 22),
      //     ),
      //   ),
      // ),

      // TEXT STYLE

      // body: Center(
      //   child: Text(
      //     'Hello Flutter',
      //     style: TextStyle(
      //         color: Colors.red, fontSize: 32, fontWeight: FontWeight.bold),
      //   ),
      // ),

      // CIRCULAR AVATAR

      // body: Center(
      //   child: CircleAvatar(
      //     radius: 70,
      //     backgroundColor: Colors.yellow,
      //     backgroundImage: NetworkImage(
      //         'https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg'),
      //     //           backgroundImage: AssetImage(
      //     // 'assets/images/a.png'),
      //   ),
      // ),

      // STACK

      // body: Stack(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //           color: Colors.green, borderRadius: BorderRadius.circular(100)),
      //       width: 320,
      //       height: 320,
      //     ),
      //     Positioned(
      //       left: 100,
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.orange,
      //             borderRadius: BorderRadius.circular(100)),
      //         width: 300,
      //         height: 300,
      //       ),
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //           color: Colors.blue, borderRadius: BorderRadius.circular(100)),
      //       width: 250,
      //       height: 250,
      //     ),
      //     Positioned(
      //       left: 50,
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.red, borderRadius: BorderRadius.circular(100)),
      //         width: 200,
      //         height: 200,
      //       ),
      //     ),
      //     Container(
      //       width: 150,
      //       height: 150,
      //       decoration: BoxDecoration(
      //           color: Colors.yellow, borderRadius: BorderRadius.circular(100)),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       decoration: BoxDecoration(
      //           color: Colors.green, borderRadius: BorderRadius.circular(100)),
      //     )
      //   ],
      // ),

      // MEDIAQUERIES

      // body: Center(
      //   child: Container(
      //     width: MediaQuery.of(context).size.width * 0.8,
      //     height: MediaQuery.of(context).size.height * 0.5,
      //     color: Colors.red,
      //   ),
      // ),

      // ELEVATED BUTTON

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //           context, MaterialPageRoute(builder: (context) => AppFile()));
      //     },
      //     child: Text('Button'),
      //   ),
      // ),

      body: Column(
        children: [
          multiple(),
          multiple(),
          multiple(),
          multiple(),
          multiple(),
        ],
      ),
    );
  }

  Widget multiple() {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 50,
      ),
      title: Text('Huzaifa Khan'),
      subtitle: Text('hello'),
      trailing: Column(
        children: [
          Text('4:25 PM'),
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 10,
          )
        ],
      ),
    );
  }
}
