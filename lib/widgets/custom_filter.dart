import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/colors.dart';

class CustomFilter extends StatelessWidget {
  final String? titleFilter;
  final String? datePeriod;
  final Function? onFiltered;

  const CustomFilter(
      {Key? key, this.titleFilter, this.datePeriod, this.onFiltered})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        leading: Text(
          titleFilter!,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16),
        ),
        title: Center(
          child: Text(
            datePeriod!,
            style:
                Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 14),
          ),
        ),
        trailing: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.filter,
              color: primaryColor,
              size: 16,
            ),
            onPressed: onFiltered as void Function()?),
      ),
    );
  }
}
