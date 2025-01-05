import 'package:flutter/material.dart';

class UIHelper extends StatelessWidget {
  final double? height;
  final double? width;
  final Padding? padding;
  const UIHelper({
    super.key, this.height, this.width, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(


      height: height ?? 5,
      width: width?? 5,
    );
  }
}
