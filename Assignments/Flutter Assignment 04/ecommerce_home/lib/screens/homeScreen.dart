import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      color: Colors.grey.withOpacity(0.2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Items', style: TextStyle(fontSize: 18)),
              Text(
                'View More',
                style: TextStyle(color: Colors.purple),
              ),
            ],
          )
        ],
      ),
    );
  }
}
