 import 'package:flutter/material.dart';
import 'package:scratcher/widgets.dart';

class ScratchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scratch-Off Example'),
      ),
      body: Center(
        child: Scratcher(
          brushSize: 40,
          threshold: 100,
          color: Colors.grey[500]!,
          onThreshold: () {
            // Triggered when the scratch area is covered.
            print("Scratch area completed!");
          },
          child: Container(
            width: 300,
            height: 200,
            color: Colors.transparent,
            child: Center(
              child:  CircleAvatar( radius: 100,backgroundColor: Colors.white54,backgroundImage: AssetImage('assets/profile.jpg'),),
            ),
          ),
        ),
      ),
    );
  }
}
