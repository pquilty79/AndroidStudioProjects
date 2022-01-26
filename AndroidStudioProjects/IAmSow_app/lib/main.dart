import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(IAmSowApp());

class IAmSowApp extends StatelessWidget {
  const IAmSowApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[700],
        appBar: AppBar(
          title: const Text("I Am Sow"),
          backgroundColor: Colors.pink[100],
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              child: const Image(
                image: AssetImage('images/maxresdefault.jpeg'),
                alignment: Alignment.center,
              ),
              onPressed: () {
                AudioCache player = AudioCache();
                player.play('449577__zachrau__pigs-oinking.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
