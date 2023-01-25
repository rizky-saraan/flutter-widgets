import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome(
      {Key? key,
      this.onSearchListener,
      this.onCartListener,
      this.onOpenDrawer,
      this.countCart})
      : super(key: key);

  final Function? onSearchListener;
  final Function? onCartListener;
  final VoidCallback? onOpenDrawer;
  final String? countCart;

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
      title: const Text(
        "Home",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: blackColor,
          fontSize: 18,
        ),
      ),
      pinned: true,
      elevation: 1,
      actions: [
        GestureDetector(
          onTap: onSearchListener as void Function()?,
          child: const Icon(
            Icons.search,
            color: primaryColor,
            size: 25,
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: onCartListener as void Function()?,
          child: Badge(
            showBadge: (countCart.toString() != "0"),
            toAnimate: true,
            animationType: BadgeAnimationType.fade,
            position: BadgePosition.topEnd(top: 4, end: -8),
            badgeContent: Text(
              countCart.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: whiteColor),
            ),
            badgeColor: redColor,
            child: const Icon(
              Icons.shopping_cart,
              color: primaryColor,
              size: 25,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
