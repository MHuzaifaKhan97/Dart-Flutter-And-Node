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
      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 50,
          mainAxisSpacing: 50,
          children: List.generate(nameList.length, (index) {
            return Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(nameList[index]),
            );
          })),
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
