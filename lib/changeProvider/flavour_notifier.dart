import 'package:fitnesspro/flavour_enviornment/EnvironmentConfig.dart';
import 'package:flutter/material.dart';

class FlavourNotifier extends ChangeNotifier {
  String _environment =
      EnvironmentConfig.development; // Store the selected environment

  // Getter for the environment
  String get environment => _environment;

  // Setter to update the environment
  void setEnviornment(String value) {
    _environment = value;
    notifyListeners();
  }
}
