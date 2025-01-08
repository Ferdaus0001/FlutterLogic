import 'package:flutter/material.dart';
import 'package:porviders/helper/ui_helper_widget.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({super.key});

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
          'Zoom Image',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 22, horizontal: 9),
        child: Column(
          children: [
            UIHelper(height: 50),
            Center(
              child: InteractiveViewer(
                maxScale: 10, // Maximum zoom scale
                minScale: 1, // Minimum zoom scal// e
                child: Image.network(
                  'https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg',
                  fit: BoxFit.cover, // Ensures image covers the space
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
