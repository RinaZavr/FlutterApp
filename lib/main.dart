import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sandbox/verification_screen/state/screen_state.dart';
import 'package:sandbox/verification_screen/view/verification_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChangeNotifierProvider<ScreenState>(
        create: (context) => ScreenState("", false),
        child: Consumer<ScreenState>(
          builder: ((context, value, child) => const VerificationView()),
        )
      )
    );
  }
}