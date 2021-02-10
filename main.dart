import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
         title :Text('IM SO POOR, PLS DONATE BITCOINS!'),
        centerTitle: true,
        elevation: 5.33,
      ),
      body: Center(
        child:Image(
          ///title:Text("money")
          image:AssetImage('images/bitcoin.webp')
        )
      ),
    ),
    ),
  );
}
