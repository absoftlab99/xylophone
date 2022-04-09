import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
    const XylophoneApp(),
);

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  void play(soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded music({required Color color, int? soundNumber, number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          play(soundNumber);
        }, child: Text('$number'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:
          Title(
            color: Colors.green,
            child: const Text('Xylophone',
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              music(color: Colors.red, soundNumber: 1, number: 1),
              music(color: Colors.orange, soundNumber: 2, number: 2),
              music(color: Colors.yellow, soundNumber: 3, number: 3),
              music(color: Colors.green, soundNumber: 4, number: 4),
              music(color: Colors.teal, soundNumber: 5, number: 5),
              music(color: Colors.blue, soundNumber: 6, number: 6),
              music(color: Colors.purple, soundNumber: 7, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
