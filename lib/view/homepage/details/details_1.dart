import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Details1 extends StatelessWidget {
  const Details1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Hero(
        tag: 'Kuta',
        child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark,
                statusBarColor: Colors.transparent),
            child: Scaffold(
              body: Stack(
                children: [
                  Image(
                    height: size.height * 1,
                    image: const AssetImage('Assets/images/kuta.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
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
                        top: size.height * 0.012, right: size.width * 0.4),
                    child: Center(
                        child: Text(
                      'Kuta beach',
                      style: GoogleFonts.urbanist(
                          color: Colors.white, fontSize: 35),
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.15, left: 30),
                        child: Center(
                            child: Text(
                          'Bali, Indonesia',
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
                    padding: EdgeInsets.only(top: size.height * 0.5, left: 20),
                    child: Center(
                        child: Text(
                      textAlign: TextAlign.justify,
                      ' Bali is an island in indonesia known for its verdont \n volcanoes, unique rice terraces, beaches, and beautiful \n coral reefs. Before becoming a tourist attraction. Kuta \n was a trading part where local product were traded to \n buyers from outside Bali.',
                      style: GoogleFonts.urbanist(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.7, left: 30),
                        child: const Center(
                            child: Image(
                                image: AssetImage('Assets/icon/star.png'))),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.7, left: 10),
                        child: Text(
                          '4.8',
                          style: GoogleFonts.urbanist(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: size.height * 0.9, left: 30),
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
