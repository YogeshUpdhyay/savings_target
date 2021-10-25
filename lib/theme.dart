import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color primaryColor = const Color(0xffdfe7fd);
  static Color primaryTextColor = const Color(0xff2b2d42);
  static Color secondaryColor = const Color(0xff3D5A80);
  static Color primaryDarkColor = const Color(0xff0096c7);

  static TextStyle headingTextStyle = GoogleFonts.montserrat(
    fontSize: 36,
    color: primaryTextColor
  );

  static TextStyle subtitleTextStyle = GoogleFonts.montserrat(
    fontSize: 24,
    color: secondaryColor
  );
}

