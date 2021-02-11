import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

// exception soln :sdk 16 to 23 and increased internal storage of the emulator.
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound( int soundno){
    final player = AudioCache();
    player.play('note$soundno.wav');

  }

  Expanded sound({ Color color, int soundno}) {
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
           playsound(soundno);

        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(


            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,



              children:[
                sound(color:Colors.red,soundno:1),
                sound(color:Colors.deepOrange,soundno:2),
                sound(color:Colors.yellowAccent,soundno:3),

                sound(color:Colors.green,soundno:4),
                sound(color:Colors.teal,soundno:5),

                sound(color:Colors.blueAccent , soundno:6),
                sound(color:Colors.purple,soundno:7),

              ],
               
        ),
          ),
      ),

    );
  }
}



