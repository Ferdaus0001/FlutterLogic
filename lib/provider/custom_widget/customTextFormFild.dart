import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  final double? borderRadius;
  final double? borderSide;
  final Color? borderColor;
  final String hintText;
  final TextStyle? hintTextStyle;
  final Widget? prefixIcon;
  final Widget? srefixIcon;
  final VoidCallback? onTap ;
  final bool? obscure ;
  final TextInputType? keyboard ;
  final Color? fillColor ;
  final bool?  filled;
  final TextEditingController? controller;
  const CustomTextFormFiled(
      {super.key,
      this.borderRadius,
      this.borderSide,
      this.borderColor,
      required this.hintText,
      this.hintTextStyle,
      this.prefixIcon,
      this.srefixIcon, this.onTap, this.obscure, this.keyboard, this.fillColor, this.filled, this.controller});

  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscure?? false,
       keyboardType:widget.keyboard ?? TextInputType.text ,
      onTap: widget.onTap ,

      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          
        ),
        filled: widget.filled ?? false,
        fillColor: widget.fillColor?? Colors.white,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.srefixIcon,
          hintText: widget.hintText ?? 'ferdaus',
          hintStyle: widget.hintTextStyle ??
              TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.blue),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
              borderSide: BorderSide(
                width: widget.borderSide ?? 1,
                color: widget.borderColor ?? Colors.grey.shade400,
              ))),

    );
  }
}
