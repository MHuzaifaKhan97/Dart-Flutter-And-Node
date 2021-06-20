import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";
  clear() {
    setState(() {
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            child: Text(
              result,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button("1"),
              button("2"),
              button("3"),
              button("4"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button("5"),
              button("6"),
              button("7"),
              button("8"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button("9"),
              button("+"),
              button("-"),
              button("x"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button("/"),
              button("0"),
              ElevatedButton(onPressed: clear, child: Text('C')),
              button("="),
            ],
          ),
        ],
      ),
    );
  }

  Widget button(var text) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result += text;
          });
        },
        child: Text(text));
  }
}
