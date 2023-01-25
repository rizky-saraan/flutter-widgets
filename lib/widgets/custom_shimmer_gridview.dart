import 'package:flutter/material.dart';

import 'custom_card_shimmer.dart';

class CustomShimmerGridview extends StatelessWidget {
  const CustomShimmerGridview({Key? key, this.axisCount = 2}) : super(key: key);
  final int axisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: axisCount,
      children: const <Widget>[
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
        CustomCardShimmer(),
      ],
    );
  }
}
