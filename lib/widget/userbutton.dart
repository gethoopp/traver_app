import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextButton userbutton({required String text, required Color colors,  Color? colorss}) {
  return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colorss),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: colors),
              borderRadius: const BorderRadius.all(Radius.circular(20))))),
      child: Text(
        text,
        style: GoogleFonts.headlandOne(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
      ));
}
