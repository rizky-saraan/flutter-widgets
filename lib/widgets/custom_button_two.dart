import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButtonTwo extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Function? press;
  final Color? color, textColor, backgroundColor;

  const CustomButtonTwo({
    Key? key,
    this.text,
    this.press,
    this.backgroundColor = whiteColor,
    this.color = secondaryColor,
    this.textColor = primaryDark,
    this.fontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? whiteColor,
        side: BorderSide(width: 2, color: color ?? primaryColor),
      ),
      onPressed: press as void Function()?,
      child: Text(
        text ?? "",
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontSize: fontSize,
              color: textColor,
            ),
      ),
    );
  }
}
