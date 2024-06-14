import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextButton userbutton(
    {required String text,
    required Color colors,
    Color? colorss,
    void Function()? onPressed}) {
  return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(colorss),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: colors),
              borderRadius: const BorderRadius.all(Radius.circular(20))))),
      child: Text(
        text,
        style: GoogleFonts.headlandOne(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ));
}
