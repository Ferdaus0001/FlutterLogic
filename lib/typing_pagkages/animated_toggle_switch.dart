import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:porviders/helper/ui_helper_widget.dart';

class ToggleSwitchExample extends StatefulWidget {
  const ToggleSwitchExample({super.key});

  @override
  State<ToggleSwitchExample> createState() => _ToggleSwitchExampleState();
}

class _ToggleSwitchExampleState extends State<ToggleSwitchExample> {
  // Initial value of the toggle
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Toggle Switch Example'),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 11, vertical: 22)),
          Center(
            child: AnimatedToggleSwitch<bool>.dual(
              onTap: (valu) {},
              current: isToggled,
              first: false, // First state
              second: true, // Second state
              onChanged: (value) {
                setState(() {
                  isToggled = value;
                });
              },
              iconBuilder: (value) => value
                  ? const Icon(Icons.check, color: Colors.green)
                  : const Icon(Icons.close, color: Colors.red),
              textBuilder: (value) => value
                  ? const Center(
                      child: Text('On', style: TextStyle(color: Colors.green)))
                  : const Center(
                      child: Text('Off', style: TextStyle(color: Colors.red))),
            ),
          ),
          UIHelper(height: 120,),
          Center(
              child: LoadingAnimationWidget.flickr(
                    size: 111, leftDotColor: Colors.blue, rightDotColor: Colors.red
              )

          )
        ],
      ),
    );
  }
}
