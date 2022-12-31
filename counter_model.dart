import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  getCounter() => _counter;

  setCounter(int counter) => _counter = counter;

  void incrementcounter() {
    _counter++;
    notifyListeners();
  }

  void decrementcounter() {
    _counter--;
    notifyListeners();
  }
}
