import 'package:flutter/material.dart';
import 'package:porviders/data/presentation/data_one.dart';
import 'package:porviders/helper/padding_helper.dart';

import '../../helper/ui_helper_widget.dart';
class DataModelsScreen extends StatefulWidget {
  const DataModelsScreen({super.key});

  @override
  State<DataModelsScreen> createState() => _DataModelsScreenState();
}

class _DataModelsScreenState extends State<DataModelsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       backgroundColor: Colors.white,
        body: Column(
          children: [
              PaddingHelper(horizontalPadding: 11,),
            UIHelper(height: 100,),

               Expanded(
                 child: ListView.builder(
                   itemCount: ProductsList.length,
                     itemBuilder: (context,indext){
                   return             ListTile(
                     title: Text(ProductsList[indext].name.toString()),
                     subtitle: Text(ProductsList[indext].prices.toString()),
                     trailing: CircleAvatar(backgroundImage: ProductsList[indext].image,),
                     leading: CircleAvatar(),
                   );
                 }),
               )

          ],
        ),
      ),
    );
  }
}
