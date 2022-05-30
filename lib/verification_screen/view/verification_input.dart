import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sandbox/const_style.dart';
import 'package:sandbox/verification_screen/state/screen_state.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  @override
  Widget build(BuildContext context) {
    ScreenState state = Provider.of<ScreenState>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(238, 242, 238, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color:
                    state.isError ? errorBorderColor : transparentBorderColor,
                width: 2)),
        child: IntrinsicHeight(
          child: Row(children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: Image(image: AssetImage("img/usa.png")),
            ),
            const Text(
              "+1",
              style: TextStyle(
                  fontFamily: 'Golos-UI',
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            const VerticalDivider(
              color: Color.fromRGBO(206, 206, 206, 1),
              thickness: 2,
              width: 20,
              indent: 7,
              endIndent: 7,
            ),
            Expanded(
                child: TextField(
              decoration: const InputDecoration(
                fillColor: Color.fromRGBO(238, 242, 238, 1),
                border: InputBorder.none,
                counterText: "",
              ),
              style: const TextStyle(
                  fontFamily: 'Golos-UI',
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
              maxLength: 9,
              keyboardType: TextInputType.number,
              controller: TextEditingController(text: state.phoneNumber),
              onChanged: (text) {
                state.changePhoneNumber(text);
              },
            ))
          ]),
        ),
      ),
    );
  }
}
