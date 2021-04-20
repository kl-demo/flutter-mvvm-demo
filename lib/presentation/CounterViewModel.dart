import 'package:flutter/material.dart';
import '../domain/Counter.dart';

class CounterViewModel extends ChangeNotifier {
  final Counter _counter;
  int _numberOfClick = 0;
  bool _canClick = false;

  CounterViewModel(this._counter) {
    _update();
  }

  void _update() {
    _counter.getNumberOfClicks().then((numberOfClick) {
      _numberOfClick = numberOfClick;
      _canClick = true;
      notifyListeners();
    }).catchError((error) {
      _canClick = true;
    });
  }

  int get numberOfClicks => _numberOfClick;

  bool get canClick => _canClick;

  void increment()  {
    _canClick = false;
    notifyListeners();
    _counter.setNumberOfClicks(_numberOfClick + 1).then((_) => _update());
  }
}
