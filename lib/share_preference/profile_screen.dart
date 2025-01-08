import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget buildTextFormField(String hint) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.blue),),
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              AvatarGlow(
                glowColor: Colors.blue,
                duration: Duration(seconds: 3),
                endRadius: 01,
                child: Material(     // Replace this child with your own
                  elevation: 8.0,
                  shape: CircleBorder(),
                  child: CircleAvatar(

                    backgroundColor: Colors.black45,
                    radius: 50.0,
                    child: Image.asset(
                      'assets/BED5A90B-D4BB-4293-9821-AA6128AC91C2 1.png',
                      height: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
              TextFormField(
                readOnly: true,
                controller: emailController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.delete,color: Colors.red,),
                  hintText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardAppearance:Brightness.light ,
                readOnly: true,
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.delete,color: Colors.red,),
                  hintText: 'Enter Your Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Color(0xFF261C12)),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
