

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:porviders/share_preference/profile_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const String LoginKay = 'isLogin';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 850,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text('Ferdaus',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 44),),
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }

 }

void isLogin() async{



  var sp = await SharedPreferences.getInstance();
  sp.getBool(_SplashScreenState.LoginKay);

  Timer(Duration(seconds: 4), (){
  Get.off(ProfileScreen());

},

);
}
