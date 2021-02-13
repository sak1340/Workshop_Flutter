import 'package:flutter/material.dart';


class Store with ChangeNotifier{
  int sumPrice = 0;
  Store();
  void undateSum(int price){
    sumPrice += price ;
    notifyListeners();
  }
  get getSum => sumPrice;
}