import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp( ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body:SafeArea(


            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  CircleAvatar(
                    radius:60.0,
                    backgroundImage: AssetImage('images/dp.png'),
                  ),
                  Text(
                      'RUHIKAS ARMOUR',

                  style:TextStyle(
                    color:Colors.black,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Redressed',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                  ),
                  Text('MAKEUP ARTIST',
                  style:TextStyle(
                    fontFamily:'Source Sans Pro', //name just like in pubs yaml family
                    fontSize: 20.0,

                  ),

                  ),
                    //SizedBox(
                     // width:130,
                     // height:15,
                   Divider(
                           color: Colors.grey,
                     indent:60.0,
                     endIndent: 70,
                     thickness: 1.0,

                    ),

                    Card(
                        color: Colors.grey,
                        margin:EdgeInsets.fromLTRB(50.0, 30.0, 45.0,15),

                           child:ListTile(
                          leading: Icon(
                          Icons.add_call,
                          size: 25.0,
                          color: Colors.red[900]),
                          title: Text('+88998899',
                              style:TextStyle(
                                color:Colors.white70,
                                fontSize: 25.0,
                              ),
                        ),


                          ),
                        ),




                    Card(
                      color: Colors.grey,
                      margin:EdgeInsets.fromLTRB(50.0, 10.0, 50.0,20),


                      child:ListTile(
                        leading:
                          Icon(
                              Icons.attach_email_sharp,
                              size: 25.0,
                              color: Colors.red.shade900),
                          title:
                          Text('ranchor@gmail.com',
                            style:TextStyle(
                              color:Colors.white70,
                              fontSize: 20.0,

                            ),
                          ),
                      ),

                      ),
                     ],
                    ),
                   ),
                ),

    );


  }
}


