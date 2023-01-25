import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

import '../utils/colors.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: brownColor.withOpacity(0.5),
            spreadRadius: .1,
            blurRadius: 2,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      margin: const EdgeInsets.all(16.0),
      child: GFShimmer(
        duration: const Duration(seconds: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(width: 5.0),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(width: 5.0),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(width: 5.0),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.10,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5.0),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
