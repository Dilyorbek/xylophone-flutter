import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildColoredButton(1, Colors.red),
              buildColoredButton(2, Colors.orange),
              buildColoredButton(3, Colors.yellow),
              buildColoredButton(4, Colors.green),
              buildColoredButton(5, Colors.teal),
              buildColoredButton(6, Colors.blue),
              buildColoredButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildColoredButton(int id, Color color) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () => playNote(id),
        ),
      );

  void playNote(int id) => AudioCache().play('note$id.wav');
}
