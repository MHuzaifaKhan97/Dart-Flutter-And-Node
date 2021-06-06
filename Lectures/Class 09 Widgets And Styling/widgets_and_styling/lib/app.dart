import 'package:flutter/material.dart';

class AppFile extends StatefulWidget {
  const AppFile({Key key}) : super(key: key);

  @override
  _AppFileState createState() => _AppFileState();
}

class _AppFileState extends State<AppFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Reached here by navigation'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'))
          ],
        ),
      ),
    );
  }
}
