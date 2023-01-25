import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomRichText extends StatelessWidget {
  final String? text;
  final String? linkText;
  final Function? press;

  const CustomRichText({Key? key, this.text, this.linkText, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text ?? "-",
        style: const TextStyle(color: Colors.black, fontSize: 18),
        children: <TextSpan>[
          TextSpan(
            text: linkText ?? "-",
            style: const TextStyle(color: secondaryColor, fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap = press as void Function()?,
          )
        ],
      ),
    );
  }
}
