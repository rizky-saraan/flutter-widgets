import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

BoxDecoration cardContainer = const BoxDecoration(
  color: whiteColor,
  borderRadius: BorderRadius.all(Radius.circular(4.0)),
);

BoxDecoration cardGradientStyle = const BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(16.0)),
  gradient: LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      primaryDark,
      softBlue,
    ],
  ),
);

TextFieldProps customTextFieldProps = TextFieldProps(
  decoration: InputDecoration(
    hintText: "Search by name",
    contentPadding: const EdgeInsets.all(10),
    errorStyle: GoogleFonts.poppins(
      color: Colors.red,
    ),
    fillColor: greyColor,
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor, width: 1.0),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
  ),
);

BoxDecoration gradientStyle = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    tileMode: TileMode.clamp,
    colors: [
      primaryColor,
      secondaryColor,
    ],
  ),
);

BoxDecoration headerStyle = BoxDecoration(
  color: whiteColor,
  boxShadow: [
    BoxShadow(
      color: greyColor.withOpacity(0.5),
      spreadRadius: .2,
      blurRadius: 2,
      offset: const Offset(0, 0), // changes position of shadow
    ),
  ],
  borderRadius: const BorderRadius.all(Radius.circular(2.0)),
);

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: whiteColor,
      errorColor: redColor,
      fontFamily: "Poppins",
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
        headline3: GoogleFonts.poppins(
          fontSize: 26.0,
          color: whiteColor,
        ),
        headline4: GoogleFonts.poppins(
          fontSize: 24.0,
          color: Colors.white,
        ),
        headline5: GoogleFonts.poppins(
          fontSize: 16.0,
          color: blackColor,
        ),
        headline6: GoogleFonts.poppins(
          fontSize: 12,
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: GoogleFonts.poppins(
          color: textDescription,
          fontSize: 13,
        ),
        bodyText2: GoogleFonts.poppins(
          fontSize: 13,
          color: textDescription,
          fontWeight: FontWeight.w400,
        ),
        button: GoogleFonts.poppins(
          color: blackColor,
        ),
        caption: GoogleFonts.poppins(
          color: blackColor,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        buttonColor: accentColor,
      ),
    );
  }
}
