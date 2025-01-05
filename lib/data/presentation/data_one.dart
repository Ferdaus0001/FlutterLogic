import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Products {
  late final ImageProvider? image;
  final bool?  isStock;
  late final String? name;
  final double? prices;
  Products(  {this.name, this.image,this.prices,this.isStock,});
}

List<Products> ProductsList = [
  Products(isStock: false,name: 'ferdaus',image: NetworkImage('https://th.bing.com/th?q=Avocado&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'),prices: 2222),
  Products(isStock: false,name: 'ferdaus2',image: NetworkImage('https://th.bing.com/th?q=Avocado&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'),prices: 2222),

   ];

class Image {
  late final  ImageProvider? imageUrl;
  Image({this.imageUrl});
}

List<Image> ImageList = [
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
  Image( imageUrl: NetworkImage('')),
];