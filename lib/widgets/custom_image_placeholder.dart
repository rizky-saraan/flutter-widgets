import 'package:flutter/material.dart';

class CustomImagePlaceholder extends StatelessWidget {
  const CustomImagePlaceholder({
    super.key,
    this.path = "assets/images/image.png",
  });

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 150,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: Image.asset(
          path ?? "",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
