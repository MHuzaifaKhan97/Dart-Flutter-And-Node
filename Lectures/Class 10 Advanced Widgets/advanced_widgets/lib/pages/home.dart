import 'package:advanced_widgets/pages/login.dart';
import 'package:advanced_widgets/pages/register.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var list = [
    {"name": 'Huzaifa', "age": '24'},
    {"name": 'Waleed', "age": '22'},
    {"name": 'Abubakar', "age": '21'},
    {"name": 'Usama', "age": '24'},
  ];

  var nameList = ['Huzaifa', 'Waleed', 'Abubakar', 'Usama', 'Asad'];

  var text = "";

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // appBar: AppBar(title: Text('Advanced Widget')),

    // LISTVIEW

    // body: ListView(
    //   children: [
    // something('Huzaifa', 24),
    // something('Waleed', 22),
    // something('Abubakar', 21),
    //   ],
    // ),

    // LISTvIEW.builder

    // body: ListView.builder(
    //   itemCount: list.length,
    //   itemBuilder: (context, index) {
    //     // return something(list[index]['name'], list[index]['age']);
    //     return ListTile(
    //       title: Text(list[index]['name']),
    //       subtitle: Text(list[index]['age']),
    //     );
    //   },
    // ),

    // GridView

    // body: GridView.count(
    //     crossAxisCount: 3,
    //     crossAxisSpacing: 50,
    //     mainAxisSpacing: 50,
    //     children: List.generate(nameList.length, (index) {
    //       return Container(
    //         height: 200,
    //         width: 200,
    //         alignment: Alignment.center,
    //         decoration: BoxDecoration(
    //             color: Colors.grey.withOpacity(0.2),
    //             borderRadius: BorderRadius.circular(10)),
    //         child: Text(nameList[index]),
    //       );
    //     })),

    // DRAWER EXAMPLE

    // drawer: Drawer(
    //   child: ListView(
    //     children: [
    //       DrawerHeader(
    //           curve: Curves.easeInCirc,
    //           child: Container(
    //             alignment: Alignment.center,
    //             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    //             color: Colors.orange,
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 CircleAvatar(
    //                   backgroundImage: NetworkImage(
    //                       'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
    //                 ),
    //                 SizedBox(width: 20),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       'Muhammad Huzaifa',
    //                       style: TextStyle(fontSize: 20),
    //                     ),
    //                     Text('Huzaifanadir@gmail.com')
    //                   ],
    //                 )
    //               ],
    //             ),
    //           )),
    //       ListTile(title: Text('Home')),
    //       ListTile(title: Text('Gallery')),
    //       ListTile(title: Text('About')),
    //       ListTile(title: Text('Contact Us')),
    //       Divider(),
    //       ListTile(title: Text('Logout')),
    //     ],
    //   ),
    // ),
    // );

    // TAB BAR VIEW

    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('AppBar Title'),
    //         bottom: TabBar(
    //           unselectedLabelColor: Colors.yellow,
    //           labelColor: Colors.grey,
    //           indicatorColor: Colors.orange,
    //           tabs: [
    //             Tab(
    //               child: Text('Login'),
    //             ),
    //             Tab(
    //               child: Text('Register'),
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(children: [LoginScreen(), RegisterScreen()])),
    // );

    // SETSTATE

    // return Scaffold(
    //   appBar: AppBar(title: Text('My App')),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text('Text: $text'),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //             onPressed: () {
    //               setState(() {
    //                 text = "01";
    //               });
    //             },
    //             child: Text('Make 01')),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //             onPressed: () {
    //               setState(() {
    //                 text = "02";
    //               });
    //             },
    //             child: Text('Make 02'))
    //       ],
    //     ),
    //   ),
    // );

    // BOTTOM NAVIGATION
  }

  Widget something(String name, String age) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(name),
          Text(age),
        ],
      ),
    );
  }
}
