import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  AudioPlayer().play(
                    AssetSource("note1.wav"),
                  );
                },
                child: const Text("BUTTON"),
              ),
              animbutton(text: "HEHEHEHE"),
            ],
          ),
        ),
      ),
    );
  }
}

class animbutton extends StatelessWidget {
  final String text;
  const animbutton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(this.text);
  }
}
