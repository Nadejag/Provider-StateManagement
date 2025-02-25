import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Provider_Example2 with ChangeNotifier{
  double _value=1.0;
  double get value=>_value;
  void set(double val){
    _value=val;
    notifyListeners();
  }
}