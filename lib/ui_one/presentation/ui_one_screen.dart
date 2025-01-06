import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porviders/helper/ui_helper_widget.dart';
import 'package:image_blur/image_blur.dart';


import '../../gen/assets.gen.dart';

class UiOneScreen extends StatefulWidget {
  const UiOneScreen({super.key});

  @override
  State<UiOneScreen> createState() => _UiOneScreenState();
}

class _UiOneScreenState extends State<UiOneScreen> {
  // TextEditingController
  final TextEditingController _controller = TextEditingController(
    text: 'Hi, my name is Ferdaus Hossan. What is your name?',
  );


  void _deleteTextPart() {
    String currentText = _controller.text;

    if (currentText.length > 5) {
      _controller.text = currentText.substring(10);
    } else {
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            TextField(
              controller: _controller,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Editable Text',
              ),
              maxLines: null,
            ),
            SizedBox(height: 20),
            // IconButton(onPressed: (){}, icon: Assets.google.path)
            UIHelper(height: 50,),
           Stack(
             children: [

               AvatarGlow(
                 glowColor: Colors.blue,
                 child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(221),
                       border: Border.all(color: Colors.blue,width: 2)
                   ),
                   child: CircleAvatar(
                     radius: 60,
                     // backgroundImage: AssetImage(Assets.profile.path,),
                     child: ImageBlur.imageCircularBlur(
                       // color: Colors.blue,
                       fit: BoxFit.cover,
                       alignment: Alignment.center,
                       durationShimmer:  1,
                        isShimmer: true,
                       imageAssets:  'assets/profile.jpg',
                       size: 340,
                     ),


                   ),
                 ),
               ),
               Positioned(
                 bottom: 1,
                   left: 81,
                   child: Container(
                     height: 30,
                     width: 30,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.blue,width: 2),
                       borderRadius: BorderRadius.circular(222),
                       color: Colors.white,
                     ),
                     child: GestureDetector(child: Transform.scale(scale: 0.7,child:  Image.asset(Assets.google.path,height: 30,width: 30,),),onTap: (){
                       Get.snackbar('Massage','NO Internet',backgroundColor: Colors.red,);
                     },)
                   ))
             ],
           ),
           UIHelper(height: 5,),
           Text('HI  ferdaus hossan', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontFamily: GoogleFonts.sarabun().fontFamily),),
            UIHelper(height: 50,),

          ],
        ),
      ),
    );
  }
}
