import 'package:flutter/material.dart';

class UiOneScreen extends StatefulWidget {
  const UiOneScreen({super.key});

  @override
  State<UiOneScreen> createState() => _UiOneScreenState();
}

class _UiOneScreenState extends State<UiOneScreen> {
  // TextEditingController
  final TextEditingController _controller = TextEditingController(
    text: 'Hi, my name is Ferdaus Hossan. What is your name?',
  );


  void _deleteTextPart() {
    String currentText = _controller.text;

    if (currentText.length > 5) {
      _controller.text = currentText.substring(10);
    } else {
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            TextField(
              controller: _controller,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Editable Text',
              ),
              maxLines: null,
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
