import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';

class CustomShimmerItemListview extends StatelessWidget {
  const CustomShimmerItemListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFShimmer(
      duration: const Duration(seconds: 2),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          color: Colors.white,
        ),
        title: Container(
          width: MediaQuery.of(context).size.width,
          height: 10,
          color: Colors.white,
        ),
        subtitle: Container(
          height: 6,
          color: Colors.white,
        ),
        trailing: const Icon(Icons.chevron_right_outlined),
      ),
    );
  }
}
