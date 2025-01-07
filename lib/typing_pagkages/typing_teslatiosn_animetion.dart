import 'package:flutter/material.dart';
import 'package:text_transformation_animation/text_transformation_animation.dart';
class TypingTeslatiosnAnimetion extends StatefulWidget {
  const TypingTeslatiosnAnimetion({super.key});

  @override
  State<TypingTeslatiosnAnimetion> createState() => _TypingTeslatiosnAnimetionState();
}

class _TypingTeslatiosnAnimetionState extends State<TypingTeslatiosnAnimetion> {
  String text = "Transformation";
  @override
  Widget build(BuildContext context) {
    return

    Scaffold(
      appBar: AppBar(
        title: TextTransformationAnimation(
          text: text,
          duration: Duration(milliseconds: 1000),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => text = "Text Transformation"),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );

  }
}
