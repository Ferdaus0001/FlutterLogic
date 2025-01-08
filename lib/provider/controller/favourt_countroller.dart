 import 'package:flutter/cupertino.dart';

class FavouriteController with ChangeNotifier{
  final List<int> _selectFavorite = [];
  List<int> get selectFavorite =>_selectFavorite;
  void addItems(int value){
    _selectFavorite.add(value);
    notifyListeners();


  }
}