import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final bool? isLeading;

  const CustomAppBar({Key? key, this.title, this.isLeading = true})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);
  @override
  final Size preferredSize;

  @override
  CustomAppBarState createState() => CustomAppBarState();
}

class CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: widget.isLeading ?? true,
      backgroundColor: primaryColor,
      title: Text(
        widget.title ?? "",
        style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
      ),
    );
  }
}
