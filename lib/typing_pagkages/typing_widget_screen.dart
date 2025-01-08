
import 'package:flutter/material.dart';
import 'package:porviders/helper/ui_helper_widget.dart';
import 'package:typing_text_animation/typing_text_animation.dart';

class TypingWidgetScreen extends StatefulWidget {
      const TypingWidgetScreen({super.key});

      @override
      State<TypingWidgetScreen> createState() => _TypingWidgetScreenState();
    }

    class _TypingWidgetScreenState extends State<TypingWidgetScreen> {
      @override
      Widget build(BuildContext context) {
        return  Scaffold(
          backgroundColor: Colors.white,
          body: Padding(padding: EdgeInsets.symmetric(vertical: 149,horizontal: 2),
            child: Column(
               children: [
                 TypingTextAnimation(
                   texts: ["hi my name is ferdaus hossan", "HI MY NAME IS FERDAUS HOSSAN !"],
                   textStyle: TextStyle(color: Colors.black, fontSize: 16),
                   showCursor: true, // Optional, defaults to true
                 ),
                 UIHelper(height: 20,),
               
               ],
            ),
          ),
        );
      }
    }
