// ignore_for_file: missing_required_param

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
                  final player = AudioCache();
                  player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){                    //The function will be called from here
                return Expanded(
                child: TextButton(
                  color: Color,
                  onPressed: (){
                    playSound(soundNumber);
                    
                  }, ),
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
            children: <Widget>[

              buildKey(color: Colors.red, soundNumber:1),
              buildKey(color: Colors.orange, soundNumber:2),
              buildKey(color: Colors.yellow, soundNumber:3),
              buildKey(color: Colors.green, soundNumber:4),
              buildKey(color: Colors.blue, soundNumber:5),
              buildKey(color: Colors.purple, soundNumber:6),
              buildKey(color: Colors.pink, soundNumber:7),



             ],
           ),
         ),
       ),
     );
  }
}
