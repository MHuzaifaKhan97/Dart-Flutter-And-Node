import 'package:ecommerce_home/screens/cartScreen.dart';
import 'package:ecommerce_home/screens/favoriteScreen.dart';
import 'package:ecommerce_home/screens/homeScreen.dart';
import 'package:ecommerce_home/screens/profileScreen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentTab = 0;

  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecom App UI', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {})
        ],
      ),
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home,
                        color: currentTab == 0 ? Colors.purple : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = FavoriteScreen();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: currentTab == 1 ? Colors.purple : Colors.grey)),
                SizedBox(width: 16),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = CartScreen();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.shopping_cart,
                        color: currentTab == 2 ? Colors.purple : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 3 ? Colors.purple : Colors.grey)),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search, color: Colors.white, size: 28),
        mini: true,
        backgroundColor: Colors.purple,
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
