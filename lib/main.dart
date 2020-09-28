import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  Void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey({color, x}) {
    return Expanded(
        child: RaisedButton(
      color: color,
      child: Text('Play audio'),
      onPressed: () {
        playSound(x);
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildKey(color: Colors.red, x: 1),
                buildKey(color: Colors.blue, x: 2),
                buildKey(color: Colors.green, x: 3),
                buildKey(color: Colors.yellow, x: 4),
                buildKey(color: Colors.indigo, x: 5),
                buildKey(color: Colors.orange, x: 6),
                buildKey(color: Colors.purple, x: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
