import 'package:flutter/cupertino.dart';

class SingleCoffeeProvider extends ChangeNotifier {
  int size = 0;
  int count = 0;

  void sizeSelect(int i) {
    size = i;
    notifyListeners();
  }

  void countIncrement() {
    count++;
    notifyListeners();
  }

  void countDecrement() {
    if(count != 0) count--;
    notifyListeners();

  }
}
