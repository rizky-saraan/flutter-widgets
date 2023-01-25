import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomContainerInfo extends StatelessWidget {
  final String? message;

  const CustomContainerInfo({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: backgroundColorInfo,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Text(
        message ?? "-",
        style:
            Theme.of(context).textTheme.bodyText2?.copyWith(color: whiteColor),
      ),
    );
  }
}
