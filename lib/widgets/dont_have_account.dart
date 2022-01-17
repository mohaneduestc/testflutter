import 'package:flutter/material.dart';

import 'package:test/widgets/text_bold.dart';

import '../const.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({required this.callBack});
  final callBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextBold(
          text: 'dont have account',
          color: primary,
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            callBack();
          },
          child: TextBold(
            text: "new account",
            color: secondary,
          ),
        )
      ],
    );
  }
}
