import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CartUpdate extends ChangeNotifier{
  int _x = 0;
  get x => _x;
  void update(){
    _x++;
    notifyListeners();
  }

}