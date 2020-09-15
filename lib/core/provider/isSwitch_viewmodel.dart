import 'package:flutter/material.dart';

class IsSwitchViewModel extends ChangeNotifier {
  bool _isGu = false;
  bool _isRu = false;
  bool _isSu = false;
  bool _isVegan = false;

  bool get isGu => _isGu;
  set isGu(bool value) {
    _isGu = value;
    print(value);
    notifyListeners();
  }

  bool get isRu => _isRu;
  set isRu(bool value) {
    _isRu = value;
    notifyListeners();
  }

  bool get isSu => _isSu;
  set isSu(bool value) {
    _isSu = value;
    notifyListeners();
  }

  bool get isVegan => _isVegan;
  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }
}
