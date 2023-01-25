import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function? press;
  final Color? color, textColor;
  final EdgeInsets? padding;

  const CustomButton({
    Key? key,
    this.text,
    this.press,
    this.padding = const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    this.color = primaryDark,
    this.textColor = whiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: padding,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button?.copyWith(color: textColor),
        ),
      ),
    );
  }
}
