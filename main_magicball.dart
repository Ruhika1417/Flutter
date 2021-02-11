import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
);


class BallPage extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor:Colors.blue[500],
        appBar: AppBar(
            backgroundColor:Colors.blue[900],
            title :  Text('Ask Me Anything'),
          centerTitle:true ,
        ),

      body: Ball(
        
      ),

        );

       }
      }


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=0;
  @override
  Widget build(BuildContext context) {


     return Center(
       child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
       children:[
         FlatButton(
           onPressed: (){
             setState(() {
               ballnumber=Random().nextInt(5) + 1 ;
                //child: Image.asset('images/ball$ballnumber.png');
             });
            // print(' $ballnumber  GOT CLICKED');
           },
           child: Image.asset('images/ball$ballnumber.png'),

     ),

          ],
       ),
    );


  }
}
