import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DMSansGenericText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  const DMSansGenericText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSans(
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: fontColor ?? Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}

class DMSansLightText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  const DMSansLightText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSans(
        fontSize: fontSize ?? 14.0,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: fontColor ?? Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
