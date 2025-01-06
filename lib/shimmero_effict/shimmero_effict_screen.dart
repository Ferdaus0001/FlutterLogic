import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_blur/image_blur.dart';
import 'package:shimmer/shimmer.dart';


import '../gen/assets.gen.dart';
import '../widget/image_widget.dart'; // Make sure the assets are properly defined.

class ShimmeroEffictScreen extends StatefulWidget {
  const ShimmeroEffictScreen({super.key});

  @override
  State<ShimmeroEffictScreen> createState() => _ShimmeroEffictScreenState();
}

class _ShimmeroEffictScreenState extends State<ShimmeroEffictScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

          Shimmer.fromColors(
            enabled: true,
          baseColor: Colors.red.shade400,
            highlightColor: Colors.grey,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Assets.profile.path),
            ),
          ),
              ImageWidget(height: 50,width: 50,image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxS_UvEI5JYjh4JDQG4jcclOQ5tUoxvR6XYbI9ql1oIuIwT9JTTamNj0&s',),

              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANI5JYjh4JDQG4jcclOQ5tUoxvR6XYbI9ql1oIuIwT9JTTamNj0&s",
                placeholder: (context, url) => ImageBlur.imageCircularBlur(
                  color: Colors.grey.shade400,
                    size: 150,
                    imageNetwork:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqxS_UvEI5JYjh4JDQG4jcclOQ5tUoxvR6XYbI9ql1oIuIwT9JTTamNj0&s'),
                errorWidget: (context, url, error) => CircleAvatar(radius: 60,)
              ),
          ],
          ),
        ),
      ),
    );
  }
}
