import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.faIcon, this.onClickListener})
      : super(key: key);

  final IconData faIcon;
  final Function? onClickListener;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onClickListener as void Function()?,
      child: CircleAvatar(
        radius: 20.0,
        backgroundColor: primaryColor,
        child: Icon(
          faIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
