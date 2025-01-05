
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:porviders/provider/controller/image_picker_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NameDataScreen extends StatefulWidget {
  const NameDataScreen({super.key});

  @override
  State<NameDataScreen> createState() => _NameDataScreenState();
}

class _NameDataScreenState extends State<NameDataScreen> {
  final nameController  = TextEditingController();
  ImagePickerController imagePickerController  = ImagePickerController();
  static const String Kname  = 'name';
  String nameValue = 'no data found ';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getName();
  }
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Share Preference'),
          elevation: 0,
          scrolledUnderElevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.blue,
                  elevation: 55,
                  shape: StadiumBorder(),
                  child: CircleAvatar(
                    radius: 50,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Card(
                  elevation: 1,
                  child: TextFormField(
                    readOnly: true,
                    decoration: InputDecoration(
                        hintText: nameValue,
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.blue,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(11),
                        )),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () async{
                    final sp = await SharedPreferences.getInstance();
                    sp.setString(Kname, nameController.text.toString());
                    getName();

                  },
                  child: Container(
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Center(
                        child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      // imagePickerController.imagePath.value
                    },
                    child: Text('Upload Image'))
              ],
            ),
          ),
        ));
  }

  void getName() async{
    final sp = await SharedPreferences.getInstance();
    var getName =  sp.getString(Kname);
         nameValue= getName!;
         setState(() {

         });

  }
}
