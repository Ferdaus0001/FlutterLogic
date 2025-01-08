import 'package:flutter/material.dart';

class PaddingHelper extends StatelessWidget {
  final Widget? child;
  final double? horizontalPadding;  // Horizontal Padding
  final double? verticalPadding;    // Vertical Padding

  const PaddingHelper({
    super.key,
    this.child,
    this.horizontalPadding = 5.0,  // Default horizontal padding
    this.verticalPadding = 1.0,    // Default vertical padding
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding!,  // Horizontal Padding applied
        vertical: verticalPadding!,      // Vertical Padding applied
      ),
      child: child,
    );
  }
}
