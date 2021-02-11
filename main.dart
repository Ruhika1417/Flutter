import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),


      ),
    ),
  );
}








class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideValue=1; //initial set up
  int rightSideValue=5;
  void changeImage(){
    setState(() {
      leftSideValue= Random().nextInt(6)+1 ;
      rightSideValue= Random().nextInt(6)+1;

        });
        }


  @override
  Widget build(BuildContext context) {

   // int rightSideValue=2; the state wont randomly change if you uncomment this,it it remain at dice 2 after hot reload

    return  Center(
      child: Row(
        // mainAxisAlignment : MainAxisAlignment.center,
        // padding: EdgeInsets.only(left:20.0),
        children:[
          Expanded(

            child: FlatButton(
              onPressed:(){
           changeImage();
           print('dice number= $leftSideValue');
    },
        child: Image.asset('images/dice$leftSideValue.png'),


                 ),
             ),

          //mistake =added padding around expanded and not image
          Expanded(

            child: FlatButton (

              onPressed: (){
                 changeImage();
             print('Dice number =$rightSideValue');

              },

              child: Image.asset('images/dice$rightSideValue.png'),
            ),
          ),
           ],
    ),
    );

  }
}


