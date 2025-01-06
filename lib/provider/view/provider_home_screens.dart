import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porviders/provider/controller/count_provider.dart';

class ProviderCountScreen extends StatefulWidget {
  const ProviderCountScreen({super.key});

  @override
  State<ProviderCountScreen> createState() => _ProviderCountScreenState();
}
class _ProviderCountScreenState extends State<ProviderCountScreen> {
   @override
  Widget build(BuildContext context) {
 final countProvider = Provider.of<CountProvider>(context,listen: false);
 print('rebuild');
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Provider Count Screen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
       body: Consumer<CountProvider>(
         builder: (BuildContext context,  value, Widget? child) {
           return      Center(
             child: Column(
               children: [
                 SizedBox(height: 200,),
                 Center(
                   child: Container(
                     height: 150,
                       width: 150,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.blue,width: 1),
                         borderRadius: BorderRadius.circular(111),
                       ),
                       child: Center(child: Column(
                         children: [
                           SizedBox(height: 20,),
                           Text(value.count.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44,color: Colors.blue,),),
                           SizedBox(height: 20,),
                           Text(value.count.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.blue,),),
                         ],
                       ))),
                 ),
               ],
             ),

           );
         },

       ),
      floatingActionButton: FloatingActionButton(onPressed: (){
       countProvider.setCount();
      },child: Icon(Icons.add),),

    );
  }
}
