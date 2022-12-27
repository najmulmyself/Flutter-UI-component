import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CartUpdate extends ChangeNotifier{
  int  _add = 0;
  int get add => _add;
  void update(){
    _add++;
    notifyListeners();
  }

}