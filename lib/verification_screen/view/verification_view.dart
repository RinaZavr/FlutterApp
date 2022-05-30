import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sandbox/const_style.dart';
import 'package:sandbox/verification_screen/state/screen_state.dart';
import 'package:sandbox/verification_screen/view/verification_input.dart';
import 'package:sandbox/verification_screen/view/verification_title.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    ScreenState state = Provider.of<ScreenState>(context);
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24.0, top: 20),
          child: Image(image: AssetImage("img/logo.png")),
        ),
        const VerificationTitle(),
        const Padding(
          padding: EdgeInsets.only(left: 24.0, top: 48, bottom: 6),
          child: Text(
            "Phone number",
            style: TextStyle(
                color: Color.fromRGBO(149, 154, 151, 1),
                fontFamily: 'Golos-UI_Medium',
                fontSize: 18),
          ),
        ),
        const InputForm(),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 4),
          child: Text(
            "10 digits, e.g. 9876543210",
            style: state.isError ? errorTextStyle : invisibleTextStyle,
          ),
        ),
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 74),
          child: RawMaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(mediaQuery.size.height * 0.035)),
            onPressed: () {
              state.tryToSubmit();
            },
            fillColor: const Color.fromRGBO(0, 147, 69, 1),
            padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 17),
            child: const Text(
              'Get the code',
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Golos-UI',
                  fontSize: 22),
            ),
          ),
        )),
      ],
    )));
  }
}
