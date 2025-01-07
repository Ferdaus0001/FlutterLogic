
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:porviders/time/time_screen.dart';
import 'package:provider/provider.dart';

import 'cached_network_image.dart';
import 'data/view/data_models_screen.dart';
import 'latary_widget/lotary_screen.dart';
import 'provider/controller/count_provider.dart';
import 'provider/controller/favourt_countroller.dart';
import 'provider/controller/them_controller.dart';
import 'provider/controller/value_controller.dart';
import 'time_line/time_line.dart';
import 'package:flutter/material.dart';
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
            home:  ScratchScreen(),
          );
        },
      ),
    );
  }
}
