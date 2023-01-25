import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

import '../utils/colors.dart';

class CustomProfileImageShimmer extends StatelessWidget {
  const CustomProfileImageShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFShimmer(
      duration: const Duration(seconds: 2),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              child: Container(
                height: 80,
                width: 80,
                color: greyColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 8,
              color: greyColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 4,
              color: greyColor,
            ),
          ],
        ),
      ),
    );
  }
}
