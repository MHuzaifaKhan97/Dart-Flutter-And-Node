import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var list = [
    {"name": 'Huzaifa', "age": '24'},
    {"name": 'Waleed', "age": '22'},
    {"name": 'Abubakar', "age": '21'},
    {"name": 'Usama', "age": '24'},
  ];
  var nameList = ['Huzaifa', 'Waleed', 'Abubakar', 'Usama', 'Asad'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Advanced Widget')),

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

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                curve: Curves.easeInCirc,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  color: Colors.orange,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Muhammad Huzaifa',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Huzaifanadir@gmail.com')
                        ],
                      )
                    ],
                  ),
                )),
            ListTile(title: Text('Home')),
            ListTile(title: Text('Gallery')),
            ListTile(title: Text('About')),
            ListTile(title: Text('Contact Us')),
            Divider(),
            ListTile(title: Text('Logout')),
          ],
        ),
      ),
    );
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
