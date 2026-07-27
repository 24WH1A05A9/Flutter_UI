import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack Layout'),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.green,
                width: 150,
                height: 150,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}