import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  // Example state
  String greeting = 'Welcome to Nike Shop!';

  // Example method
  void updateGreeting(String newGreeting) {
    greeting = newGreeting;
    notifyListeners();
  }
}
