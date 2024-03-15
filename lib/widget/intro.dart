import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:traver/controller/controller.dart';

// ignore: non_constant_identifier_names
Stack introMethod(
    //Size size,
     VoidCallback UpdateState,
    {required String images,
    required String text,
    required String text1,
    required String buttontext,
    required double num}) {
  return Stack(
    children: [
      Image.asset(
        images,
        fit: BoxFit.fill,
        height: num,
        colorBlendMode: BlendMode.srcOver,
      ),
      Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 400, left: 30),
                child: ImageIcon(
                  AssetImage('Assets/icon/putih.png'),
                  size: 60,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.headlandOne(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Text(
                  text1,
                  style: GoogleFonts.headlandOne(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: AnimatedSmoothIndicator(
              activeIndex: selectedIndex,
              count: 3,
              effect:  const ExpandingDotsEffect(
                dotColor: Color.fromARGB(255, 250, 234, 187),
                activeDotColor: Colors.amber
              ),
            ),
          ),
          
            SizedBox(
              width: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.amber),
                      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))))),
                  onPressed: UpdateState,
                  child:  Text(
                    buttontext,
                    style: const TextStyle(color: Colors.black),
                  )),
              ),
            ),
        

        ],
      )
    ],
  );
}
