

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final String?  FontFamily;

  const CustomText({
    super.key,
    this.title,
    this.fontSize,
    this.fontStyle,
    this.fontWeight, this.color, this.textAlign,   this.FontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      title ?? '',
      style: TextStyle(
        fontFamily:FontFamily ??  "Roboto",
        fontSize: fontSize ?? 12,

        fontStyle: fontStyle,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color?? Colors.black,
      ),
    );
  }
}

