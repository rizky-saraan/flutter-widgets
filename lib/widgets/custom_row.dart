import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomRow extends StatelessWidget {
  final String? label;
  final String? value;
  final int? flexLabel;
  final int? flexValue;

  const CustomRow(
      {Key? key,
      this.label,
      this.value,
      this.flexLabel = 4,
      this.flexValue = 6})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: flexLabel ?? 4,
            child: Text(
              label ?? "-",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 12,
                    color: blackColor,
                  ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              ":",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 12,
                    color: blackColor,
                  ),
            ),
          ),
          Expanded(
            flex: flexValue ?? 6,
            child: Text(
              value ?? "-",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 12,
                    color: blackColor,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
