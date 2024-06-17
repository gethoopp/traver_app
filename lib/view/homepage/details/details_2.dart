import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Details2 extends StatelessWidget {
  const Details2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Hero(
        tag: 'Bromo',
        child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
                statusBarColor: Colors.transparent),
            child: Scaffold(
              body: Stack(
                children: [
                  Image(
                    height: size.height * 1,
                    image: const AssetImage('Assets/images/bromo.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: size.height * 0.08, left: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Center(
                          widthFactor: 1.5,
                          heightFactor: 25,
                          child: Text(
                            'Favorite Place',
                            style: GoogleFonts.urbanist(
                                color: Colors.white, fontSize: 20),
                          )),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * 0.012, right: size.width * 0.2),
                    child: Center(
                        child: FittedBox(
                      child: Text(
                        'Bromo Mountain',
                        style: GoogleFonts.urbanist(
                            color: Colors.white, fontSize: 35),
                      ),
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.15, left: 30),
                        child: Center(
                            child: Text(
                          'Malang, Indonesia',
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                          ),
                        )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.25, left: size.width * 0.08),
                        child: Center(
                          child: Text.rich(TextSpan(
                              text: '100+',
                              style: GoogleFonts.urbanist(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: ' people have explored',
                                    style: GoogleFonts.urbanist(
                                        color: Colors.white60))
                              ])),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.5, left: 10),
                    child: Center(
                        child: Text(
                      textAlign: TextAlign.justify,
                      ' Mount Bromo is a volcano in East Java, Indonesia, known for its stunning natural beauty, spectacular sunrise views, and vast sea of sand. Before becoming a famous tourist attraction, the area around Mount Bromo was primarily agricultural land and a trading hub where local produce was sold to buyers from outside the region.',
                      style: GoogleFonts.urbanist(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: size.height * 0.75,left: size.width * 0.09 ),
                    child: Row(
                      children: [
                        const Center(
                              child: Image(
                                  image: AssetImage('Assets/icon/star.png'))),
                       Text(
                            '4.8',
                            style: GoogleFonts.urbanist(
                                color: Colors.white, fontSize: 18),
                          ),
                        
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.95, left: 30),
                        child: Text(
                          '\$245.00 /person',
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
