import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBrown = Color.fromARGB(255, 2, 75, 69);
const Color kDarkBrown = Color.fromARGB(255, 17, 73, 66);
const Color kGrey = Color(0xFFa4aaad);
const Color kDarkGrey = Color(0xFF878787);
const Color kLightGrey = Color(0xFFededed);

const Color kWhite = Color(0xffffffff);

const Color kBlack = Color.fromARGB(255, 5, 167, 170);

const Color kYellow = Color(0xffffd33c);

const double kBorderRadius = 12.0;

const double kPaddingHorizontal = 24.0;

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: const BorderSide(
    color: kLightGrey,
  ),
);
final kEncodeSansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);

final kEncodeSansSemiBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);

final kEncodeSansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);

final kEncodeSansRegular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w400,
);
