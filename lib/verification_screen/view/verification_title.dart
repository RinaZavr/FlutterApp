import 'package:flutter/material.dart';

class VerificationTitle extends StatelessWidget {
  const VerificationTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 67),
            child: Text("Verification",
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Golos-UI',
                  fontWeight: FontWeight.w500
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text("We will send a verification code \n to your phone",
              style: TextStyle(
                color: Color.fromRGBO(149, 154, 151, 1),
                fontSize: 20,
                fontFamily: 'Golos-UI_Medium',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
