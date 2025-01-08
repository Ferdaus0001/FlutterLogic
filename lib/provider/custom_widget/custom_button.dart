import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  final Color? backroundColor;
  final double?  radius;
  final double? height;
  final double width;
  final Color? broderColor;
  final VoidCallback? onTap;
  final Widget child;
  final ImageProvider? image;
  const CustomButton({super.key, this.backroundColor, this.radius, this.height, required this.width, this.broderColor, this.onTap, required this.child, this.image});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height?? 50 ,
        width:widget.width ?? 360 ,
        decoration: BoxDecoration(
          image: DecorationImage(image:widget.image!,fit: BoxFit.cover,),
          border: Border.all(color:widget.broderColor ?? Colors.transparent),
        color: widget.backroundColor ?? Colors.blue,
          borderRadius:BorderRadius.circular(widget.radius?? 2),
        ),
        child: widget.child,
      ),
    );
  }
}
