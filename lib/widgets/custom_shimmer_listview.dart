import 'package:flutter/material.dart';

import 'custom_shimmer_item_listview.dart';

class CustomShimmerListview extends StatelessWidget {
  const CustomShimmerListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
        CustomShimmerItemListview(),
      ],
    );
  }
}
