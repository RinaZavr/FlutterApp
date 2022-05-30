import 'package:flutter/material.dart';

class ScreenState extends ChangeNotifier {
  String phoneNumber;
  bool isError;

  ScreenState(this.phoneNumber, this.isError);

  void changePhoneNumber(String phone) {
    phoneNumber = phone;
  }

  void tryToSubmit() {
    isError = phoneNumber.length < 9 ? true : false;
    notifyListeners();
  }
}
