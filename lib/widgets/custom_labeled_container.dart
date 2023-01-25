import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomLabeledContainer extends StatelessWidget {
  const CustomLabeledContainer(
      {Key? key, this.label, this.value, this.mainAlign, this.crossAlign})
      : super(key: key);

  final String? label;
  final String? value;
  final MainAxisAlignment? mainAlign;
  final CrossAxisAlignment? crossAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlign ?? CrossAxisAlignment.start,
      mainAxisAlignment: mainAlign ?? MainAxisAlignment.start,
      children: [
        Text(label ?? "",
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: greyColor)),
        const SizedBox(height: 5),
        Text(
          value ?? "",
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}
