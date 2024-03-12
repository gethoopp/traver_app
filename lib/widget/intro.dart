// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:traver/controller/controller.dart';

// ignore: non_constant_identifier_names
Column introMethod(Size size, VoidCallback UpdateState,
    {required String images,
    required String text,
    required String text1,
    required String buttontext}) {
  return Column(
    children: [
      Padding(
        padding:
            EdgeInsets.only(top: size.height * 0.12, left: size.width * 0.10),
        child: Image.asset(images),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 30, left: 50),
        child: AnimatedSmoothIndicator(
          activeIndex: selectedIndex,
          count: 3,
          effect: const WormEffect(),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(top: size.height * 0.06, left: size.width * 0.15),
        child: Text(
          text,
          style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(top: size.height * 0.06, left: size.width * 0.10),
        child: Text(
          text1,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      Padding(
        padding:
            EdgeInsets.only(top: size.height * 0.12, left: size.width * 0.65),
        child: SizedBox(
          width: 100,
          height: 48,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 138, 104, 216)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
              onPressed: UpdateState,
              child: Text(
                buttontext,
                style: const TextStyle(color: Colors.white),
              )),
        ),
      )
    ],
  );
}
