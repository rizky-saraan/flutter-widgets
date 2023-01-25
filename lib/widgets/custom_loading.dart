import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key, this.size = 50.0}) : super(key: key);

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: const CircularProgressIndicator(
          color: primaryColor,
        ),
      ),
    );
  }
}
