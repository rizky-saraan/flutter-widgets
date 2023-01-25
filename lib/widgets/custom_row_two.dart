import 'package:flutter/material.dart';

class CustomRowTwo extends StatelessWidget {
  final String? label;
  final String? value;
  final int? flexLabel;
  final int? flexValue;
  final Color textColor;
  final double? fontSize;

  const CustomRowTwo({
    Key? key,
    this.label = "",
    this.value = "",
    this.flexLabel = 10,
    this.flexValue = 10,
    this.fontSize = 12,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: flexLabel ?? 1,
            child: Text(
              label ?? "-",
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: fontSize,
                    color: textColor,
                  ),
            ),
          ),
          Expanded(
            flex: flexValue ?? 1,
            child: Text(
              value ?? "-",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontSize: fontSize, color: textColor),
              textAlign: TextAlign.right,
            ),
          )
        ],
      ),
    );
  }
}
