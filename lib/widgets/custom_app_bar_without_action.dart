import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomAppBarWithoutAction extends StatelessWidget {
  const CustomAppBarWithoutAction({Key? key, this.title, this.onOpenDrawer})
      : super(key: key);

  final VoidCallback? onOpenDrawer;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: whiteColor,
      leading: GestureDetector(
        onTap: onOpenDrawer,
        child: const Icon(
          Icons.menu,
          color: primaryColor,
          size: 25,
        ),
      ),
      title: Text(
        title ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: blackColor,
          fontSize: 18,
        ),
      ),
      pinned: true,
      elevation: 1,
    );
  }
}
