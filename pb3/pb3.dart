import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('XYLOPHONE'),
        centerTitle: true,
      ),
      body: XyloPage(),
    ),
  ));
}

class XyloPage extends StatefulWidget {
  const XyloPage({Key? key}) : super(key: key);

  @override
  _XyloPageState createState() => _XyloPageState();
}

class _XyloPageState extends State<XyloPage> {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play("note$noteNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.indigo),
            onPressed: () {
              playSound(1);
            },
            child: Text('First'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.cyanAccent),
            onPressed: () {
              playSound(2);
            },
            child: Text('Second'),
          ),
        ),
        Expanded(
            child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () {
            playSound(3);
          },
          child: Text('Third'),
        )),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              playSound(4);
            },
            child: Text('Fourth'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.purple),
            onPressed: () {
              playSound(5);
            },
            child: Text('Fifth'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {
              playSound(6);
            },
            child: Text('Sixth'),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              playSound(7);
            },
            child: Text('Seventh'),
          ),
        ),
      ],
    );
  }
}
