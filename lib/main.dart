import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color keyColor}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: keyColor,
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(soundNumber: 1, keyColor: Colors.red),
                buildKey(soundNumber: 2, keyColor: Colors.orange),
                buildKey(soundNumber: 3, keyColor: Colors.yellow),
                buildKey(soundNumber: 4, keyColor: Colors.green),
                buildKey(soundNumber: 5, keyColor: Colors.blue),
                buildKey(soundNumber: 6, keyColor: Colors.indigo),
                buildKey(soundNumber: 7, keyColor: Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
