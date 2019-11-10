import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class MyItems {
  final String title;
  final Image picture;
  final String description;
  final double priceHigh;
  final double priceLow;

  MyItems({
  @required this.title, 
  @required this.description,
  @required this.picture, 
  @required this.priceHigh, 
  @required this.priceLow
  });
}