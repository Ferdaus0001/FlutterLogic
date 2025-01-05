import 'package:flutter/material.dart';
class CustomWripeWidget extends StatelessWidget {
  final ImageProvider? uri;
  final String? title;
  final Widget? icon;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final Color? color;

  const CustomWripeWidget({
    super.key, this.uri, this.title, this.icon, this.onTap, this.textStyle, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Wrap(
            children: [
              Container(

                child: Row(
                  children: [
                    SizedBox(width: 8,),
                    CircleAvatar(backgroundImage: uri),
                    SizedBox(width: 5,),
                    Text(title?? 'text'),
                    IconButton(onPressed: (){}, icon:  icon ?? Icon(Icons.person)),
                  ],
                ),


                decoration: BoxDecoration(
                    color: Color(0xFFff8f9f9),
                    border: Border.all(color: Color(0xFF900C3F)),
                    borderRadius: BorderRadius.circular(111)
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

