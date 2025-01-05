import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:porviders/provider/controller/them_controller.dart';
import 'package:porviders/provider/custom_widget/custom_appbar.dart';
import 'package:porviders/provider/custom_widget/custom_button.dart';
import 'package:porviders/provider/custom_widget/custom_text.dart';
import 'package:porviders/provider/models/prodts.dart';
import 'package:porviders/provider/view/provider_home_screens.dart';
import 'package:provider/provider.dart';

import '../custom_widget/customTextFormFild.dart';

class ProviderThemScreen extends StatefulWidget {
  const ProviderThemScreen({super.key});

  @override
  State<ProviderThemScreen> createState() => _ProviderThemScreenState();
}

class _ProviderThemScreenState extends State<ProviderThemScreen> {
  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemController>(context, listen: false);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text('hi'),
        barColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        toolbarHeight: 60,
        actions: [Icon(Icons.dangerous)],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Consumer<ThemController>(
            builder: (context, themController, child) {
              return RadioListTile<ThemeMode>(
                title: const Text('Light Mode'),
                subtitle: const Text('System Theme'),
                value: ThemeMode.light,
                groupValue: themController.themeMode,
                onChanged: (newTheme) {
                  themController.setTheme(newTheme!);
                },
              );
            },
          ),
          const SizedBox(height: 30),
          Consumer<ThemController>(
            builder: (context, themController, child) {
              return RadioListTile<ThemeMode>(
                title: const Text('Dark Mode'),
                subtitle: const Text('System Theme'),
                value: ThemeMode.dark,
                groupValue: themController.themeMode,
                onChanged: (newTheme) {
                  themController.setTheme(newTheme!);
                },
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextFormFiled(
              controller: null,
              keyboard: TextInputType.streetAddress,
              fillColor: Colors.grey.shade100,
              filled: true,
              obscure: true,
              // onTap: (){
              //   Get.to(
              //     ProviderCountScreen()
              //   );
              // },
              hintText: 'Search',
              hintTextStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
              borderRadius: 12,
              borderSide: 3,
              borderColor: Colors.red,
              srefixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
          CustomButton(
            image: NetworkImage( 'https://universemagazine.com/wp-content/uploads/2022/08/zm4nfgq29yi91-1536x1536-1.jpg'),
            onTap: (){
              Get.snackbar('title', 'message');
            },
          width: 400,
            child:    Center(child: Text('Tap',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
            backroundColor: Colors.green,
            height: 60,
            broderColor: Colors.white,
            radius: 11,

          ),

        ],
      ),
    );
  }
}
