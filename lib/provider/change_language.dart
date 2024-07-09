import 'package:fintech_ui_tutorial/pages/profile.dart';
import 'package:flutter/material.dart';

class ProviderLanguagePreference with ChangeNotifier {
  String? _localeMode = LanguageOption.system;

  String? get localeMode => _localeMode;

  set localeMode(String? value) {
    _localeMode = value;
    notifyListeners();
  }
}
