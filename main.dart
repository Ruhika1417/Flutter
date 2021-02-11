import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('IM RUHIKA'),
          backgroundColor: Colors.amber,
        ),
          body: Center(
            child: Image(
              image:AssetImage('images/diamond.png'),


              ),
          ),
          ),
        ),
      );



}
