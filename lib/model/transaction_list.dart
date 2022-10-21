
import 'package:flutter/material.dart';

class TransactionListModel {
  String? title;
  String? price;
  String? dateTime;
  String? iconImage;
   Color color;

  TransactionListModel({
    required this.title,
    required this.price,
    required this.dateTime,
    required this.iconImage,
        required this.color,

  });
}
