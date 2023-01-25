import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

import '../utils/colors.dart';

class CustomListviewHorizontalShimmer extends StatelessWidget {
  const CustomListviewHorizontalShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (_, index) {
          return Container(
            width: 150.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: whiteColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: .1,
                  blurRadius: 1,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            ),
            padding: const EdgeInsets.all(16.0),
            child: GFShimmer(
              duration: const Duration(seconds: 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    color: Colors.white,
                    height: 16,
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          height: 8,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.10,
                          height: 8,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
