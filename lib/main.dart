import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:porviders/provider/controller/count_provider.dart';
import 'package:porviders/provider/controller/favourt_countroller.dart';
import 'package:porviders/provider/controller/them_controller.dart';
import 'package:porviders/provider/controller/value_controller.dart';
import 'package:porviders/provider/view/provider_them_screen.dart';
import 'package:porviders/shimmero_effict/shimmero_effict_screen.dart';
import 'package:porviders/textfomfild.dart';
import 'package:porviders/typing_pagkages/animated_toggle_switch.dart';
import 'package:porviders/typing_pagkages/typing_teslatiosn_animetion.dart';
import 'package:porviders/typing_pagkages/typing_widget_screen.dart';
import 'package:porviders/ui_one/presentation/ui_one_screen.dart';
import 'package:porviders/ui_one/wrip_widget.dart';
import 'package:provider/provider.dart';

import 'cached_network_image.dart';
import 'data/view/data_models_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => ValueController()),
        ChangeNotifierProvider(create: (_) => FavouriteController()),
        ChangeNotifierProvider(create: (_) => ThemController()),
      ],
      child: Consumer<ThemController>( // Use Consumer to listen to theme changes
        builder: (context, themController, _) {
          return GetMaterialApp(
            theme: ThemeData(
              brightness: Brightness.light,

            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            title: 'Theme',
            themeMode: themController.themeMode, // Dynamically switch theme mode
            debugShowCheckedModeBanner: false,
            home: ToggleSwitchExample(),
          );
        },
      ),
    );
  }
}
