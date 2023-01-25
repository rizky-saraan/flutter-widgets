import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import 'custom_button_two.dart';

class CustomEmptyData extends StatelessWidget {
  const CustomEmptyData({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.btnText = "",
    this.isOnlyMessage = false,
    required this.onClickListener,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final String btnText;
  final bool isOnlyMessage;
  final Function onClickListener;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Image.asset(
            image,
            width: MediaQuery.of(context).size.width * .3,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 25,
              color: blackColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: textDescription,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: !isOnlyMessage,
            child: CustomButtonTwo(
              text: btnText,
              press: onClickListener as void Function()?,
            ),
          )
        ],
      ),
    );
  }
}
