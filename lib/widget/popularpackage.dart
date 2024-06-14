
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

Column popularPackage(Size size,{required title, required price, required desc}) {
    return Column(children: [
                  Row(
                    children: [
                      Card(
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Container(
                              width: 86,
                              height: 116,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: size.height * 0.01,
                                  right: size.width * 0.2
                                ),
                                child: Text(title,
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20)),
                              ),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 10,right: size.width * 0.3),
                            child: Text(price,
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                    color: Colors.red[400])),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: size.width * 0.03,),
                            child:  Text(
                               desc),
                          )
                        ],
                      )
                    ],
                  )
                ]);
  }