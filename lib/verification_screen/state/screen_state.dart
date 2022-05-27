import 'package:flutter/material.dart';

class ScreenState extends InheritedWidget {
  String phoneNumber;
  bool isError;

  ScreenState({
    Key? key,
    required this.phoneNumber,
    required this.isError,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ScreenState oldWidget) {
    print(phoneNumber != oldWidget.phoneNumber || isError != oldWidget.isError);
    return phoneNumber != oldWidget.phoneNumber || isError != oldWidget.isError;
  }

  void changePhoneNumber(String phone) {
    phoneNumber = phone;
  }

  void tryToSubmit() {
    isError = phoneNumber.length < 9 ? true : false;
    print(phoneNumber);
  }
}
