import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget {
  final double height, width;
  final String image;

  const ImageWidget({super.key, this.height = 50, this.width =50, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Image(
      height: 200,
        width: 200,
        image: NetworkImage(image),

    );
  }
}
