import 'package:flutter/foundation.dart';

class count_provider with ChangeNotifier{
int _count=0;
int get count => _count;
void setcount(){
  _count++;
  notifyListeners();
}
}