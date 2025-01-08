import 'package:flutter/material.dart';
import 'package:animated_background/animated_background.dart';
import 'package:porviders/helper/ui_helper_widget.dart';

import '../gen/assets.gen.dart';

class AnimationBackgroundScreen extends StatefulWidget {
  const AnimationBackgroundScreen({super.key});

  @override
  State<AnimationBackgroundScreen> createState() =>
      _AnimationBackgroundScreenState();
}

class _AnimationBackgroundScreenState extends State<AnimationBackgroundScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(

          paint: Paint(),

          options: ParticleOptions(
            // image: Image.asset(Assets.google.path),
            // spawnOpacity: 0.5,
            spawnMaxRadius: 10,
            spawnMaxSpeed:40,
            spawnMinRadius: 10,
            spawnMinSpeed: 10,
            particleCount: 200,
            baseColor: Color(0xFF000080), // Optional: particle color
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20), // Space between elements
               Center(
                 child: Card(
                   shape: StadiumBorder(),

                   elevation: 222,
                   child: CircleAvatar(
                     radius: 50,
                     backgroundImage:  AssetImage('assets/profile.jpg'),
                   ),
                 ),
               ),
               UIHelper(height: 30,),
                TextFormField(

                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(11)
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blue)
                      ),
                    filled: true,
                    fillColor: Color(0xFFf8f9f9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.blue)
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(11)
                      ),
                      filled: true,
                      fillColor: Color(0xFFf8f9f9),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.blue)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blue)
                      )
                  ),
                ),
             SizedBox(height: 20,),
                Card(
                  elevation: 111,
                  shape: StadiumBorder(),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(212),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 3),
                        ),
                      ],

                    ),
                    child: Center(
                      child: Text('Clack',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
