import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded playAudio(int note, var c) {
    
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(note);
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      child: Container(

        color: c,
      ),
    ),
  );

}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Xylophone', style: TextStyle(
            color: Colors.white,

              ),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          // maintainBottomViewPadding: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: 
            [
              playAudio(1, Colors.red),
              playAudio(2, Colors.orange),
              playAudio(3, Colors.yellow),
              playAudio(4, Colors.green),
              playAudio(5, Colors.blue),
              playAudio(6, Colors.indigo),
              playAudio(7, Colors.purple),
            ],
          )
        ),
      ),
    );
  }
}

