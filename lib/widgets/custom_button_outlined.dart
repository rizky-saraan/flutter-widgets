import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButtonOutlined extends StatelessWidget {
  final String? label;
  final Function? press;

  const CustomButtonOutlined({
    Key? key,
    this.label,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 1, color: primaryColor),
        ),
        onPressed: press as void Function()?,
        child: Text(
          label ?? "",
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
