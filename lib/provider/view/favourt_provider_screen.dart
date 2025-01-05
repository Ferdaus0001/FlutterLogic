import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porviders/provider/controller/favourt_countroller.dart';

class FavouriteProviderScreen extends StatefulWidget {
  const FavouriteProviderScreen({super.key});

  @override
  State<FavouriteProviderScreen> createState() =>
      _FavouriteProviderScreenState();
}

class _FavouriteProviderScreenState extends State<FavouriteProviderScreen> {
  @override
  Widget build(BuildContext context) {
    // Access the FavouriteController
    final provider = Provider.of<FavouriteController>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text('Favourite Screen'),
      ),
      backgroundColor: Colors.white,
      body: Column()




    );
  }
}
