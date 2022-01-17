import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[700],
        appBar: AppBar(
          title: const Text("I Am Sow"),
          backgroundColor: Colors.pink[100],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/maxresdefault.jpeg'),
          ),
        ),
      ),
    ),
  );
}
