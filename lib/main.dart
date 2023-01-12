import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//test
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded buildKey({Color keyColour, int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: keyColour,
        ),
        onPressed: () {
          playSound(noteNumber);
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
            children: [buildKey(keyColour: Colors.red, noteNumber: 1),
            buildKey(keyColour: Colors.orange, noteNumber: 2),
            buildKey(keyColour: Colors.yellow, noteNumber: 3),
            buildKey(keyColour: Colors.green, noteNumber: 4),
            buildKey(keyColour: Colors.blue, noteNumber: 5),
            buildKey(keyColour: Colors.indigo, noteNumber: 6),
            buildKey(keyColour: Colors.purple, noteNumber: 7)],
          ),
        ),
      ),
    );
  }
}
