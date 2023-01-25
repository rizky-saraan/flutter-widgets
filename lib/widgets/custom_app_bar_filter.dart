import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomAppbarFilter extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final Function? onFiltered;

  @override
  final Size preferredSize;

  const CustomAppbarFilter({
    Key? key,
    this.title,
    this.onFiltered,
  })  : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  State<CustomAppbarFilter> createState() => _CustomAppbarFilterState();
}

class _CustomAppbarFilterState extends State<CustomAppbarFilter> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      title: Text(
        widget.title ?? "",
        style: Theme.of(context).textTheme.headline3?.copyWith(fontSize: 20),
      ),
      actions: [
        GestureDetector(
          onTap: widget.onFiltered as void Function()?,
          child: const Icon(
            Icons.filter_alt,
            color: whiteColor,
            size: 25,
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
