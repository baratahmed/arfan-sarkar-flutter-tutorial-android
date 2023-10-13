import 'package:flutter/material.dart';

class Data extends ChangeNotifier{
  int value = 0;

  Increment(){
      value++;
      notifyListeners();
  }
  Decrement(){
      value--;
      notifyListeners();
  }
  Reset(){
      value = 0;
      notifyListeners();
  }



}