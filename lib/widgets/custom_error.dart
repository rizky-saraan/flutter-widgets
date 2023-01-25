import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomError extends StatelessWidget {
  //
  final String? message;
  final Function? onTap;

  const CustomError({Key? key, this.message, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: InkWell(
        onTap: onTap as void Function()?,
        child: Text(
          message!,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontSize: 16,
                color: primaryColor,
              ),
        ),
      ),
    );
  }
}
