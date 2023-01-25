import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomFavoriteButton extends StatelessWidget {
  final bool? isFavorite;
  final Function? press;
  final double? size;

  const CustomFavoriteButton(
      {Key? key, this.isFavorite = false, this.press, this.size = 24.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: whiteColor,
        ),
        child: Icon(
          isFavorite! ? Icons.favorite : Icons.favorite_border_outlined,
          color: redColor,
          size: size,
        ),
      ),
    );
  }
}
