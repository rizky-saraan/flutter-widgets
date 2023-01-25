import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

import '../utils/dimens.dart';

class CustomCardShimmer extends StatelessWidget {
  const CustomCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(edgeCard),
      child: GFShimmer(
        duration: const Duration(seconds: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 10,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: 10,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
