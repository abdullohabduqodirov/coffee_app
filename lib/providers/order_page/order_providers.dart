
import 'package:coffee_app/models/card_item.dart';
import 'package:coffee_app/services/card.dart';
import 'package:flutter/cupertino.dart';

class OrderProviders extends ChangeNotifier {
  void incrementCoffee(CardItem coffee) {
    coffee.count++;
    coffee.total = coffee.count * coffee.coffee.cost;
    notifyListeners();
  }

  int count = 0;

  int readCoffee(CardItem coffee) {
    notifyListeners();

    return coffee.count;
  }

  void decrementCoffee(CardItem coffee) {
    if (coffee.count > 0) {
      coffee.count--;
      coffee.total = coffee.count * coffee.coffee.cost;
    }

    notifyListeners();
  }

  double allSumma() {
    notifyListeners();
    return cardItem.fold(
        0, (previousValue, element) => previousValue + element.total);
  }
}
