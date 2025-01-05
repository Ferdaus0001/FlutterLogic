 import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FavouriteController with ChangeNotifier{
  List<int> _selectFavorite = [];
  List<int> get selectFavorite =>_selectFavorite;
  void addItems(int value){
    _selectFavorite.add(value);
    notifyListeners();


  }
}