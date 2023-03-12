import 'package:flutter/material.dart';

class seetingpro extends ChangeNotifier
{
  int? i,value;

  void onoff()
  {
    i=value;
    notifyListeners();
  }

}