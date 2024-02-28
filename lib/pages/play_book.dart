import 'package:flutter/material.dart';

class PlayBook extends StatefulWidget {
  const PlayBook({super.key});

  @override
  State<PlayBook> createState() => _PlayBookState();
}

class _PlayBookState extends State<PlayBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('This Functionality WiLL  Add In Next Version?',
            style: TextStyle(color: Colors.cyanAccent,fontSize: 25,fontWeight: FontWeight.w700),)
        ],
      ),
    );
  }
}
