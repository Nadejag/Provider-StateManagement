import 'package:flutter/foundation.dart';
class favouriteitemprovider with ChangeNotifier{
  List<int> _Selectitem=[];
  List<int> get SelectedItem => _Selectitem;
  void AddItem(int value){
    _Selectitem.add(value);
    notifyListeners();
  }
  void Removeitem(int value){
    _Selectitem.remove(value);
    notifyListeners();
  }
}