import 'dart:io';

import 'package:flutter/material.dart';
import 'package:setting_adflutter/main.dart';

class seetingpro extends ChangeNotifier {
  bool s1 = false;
  bool s2 = false;
  bool s3 = false;
  bool s4 = false;
  bool s5 = false;
  bool s6 = false;

  void Chack1(bool value)
  {
    s1 = value;
    check = value;

    notifyListeners();
  }
  void Chack2(bool value)
  {
    s2 = value;
    notifyListeners();
  }
  void Chack3(bool value)
  {
    s3 = value;
    notifyListeners();
  }
  void Chack4(bool value)
  {
    s4 = value;
    notifyListeners();
  }
  void Chack5(bool value)
  {
    s5 = value;
    notifyListeners();
  }
  void Chack6(bool value)
  {
    s6 = value;
    notifyListeners();
  }


  void ChachDivace()
  {
    notifyListeners();
  }
}
