import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle DesktopHeading = GoogleFonts.poppins(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: CustomColor.whitePrimary,
    height: 1.5);

TextStyle MobileHeading = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: CustomColor.whitePrimary,
    height: 1.5);

TextStyle myProjectTitle = GoogleFonts.poppins(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: CustomColor.whitePrimary,
);

TextStyle myProjectSubtitle = GoogleFonts.poppins(
  fontSize: 10,
  color: CustomColor.whiteSecondary,
);

TextStyle projectSourceCode = GoogleFonts.poppins(
  fontSize: 10,
  color: CustomColor.yellowSecondary,
);
