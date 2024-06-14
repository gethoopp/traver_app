import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

CustomScrollView favplace(Size size) {
  return CustomScrollView(
    scrollDirection: Axis.horizontal,
    
    shrinkWrap: true,
    slivers: [
      SliverFillRemaining(
        child: Column(
          
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Favorite Place ',
                      style: GoogleFonts.headlandOne(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Text('Explore'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Hero(
                        tag: 'Kuta',
                        child: GestureDetector(
                          onTap: () => Get.toNamed('/Details1'),
                          child: Card(
                            child: Container(
                                width: 186,
                                height: 250,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "Assets/images/kuta.jpg",
                                        ),
                                        fit: BoxFit.fill)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const   EdgeInsets.only(
                                              bottom: 40, left: 20),
                                          child: Text(
                                            'Kuta Beach',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                          
                                    ),
                          
                                      Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.05, left: 20),
                                          child: Image.asset(
                                              'Assets/icon/location.png'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 40,left: 5),
                                          child: Text(
                                            'Bali, Indonesia',
                                            style: GoogleFonts.urbanist(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Hero(
                        tag: 'Bromo',
                        child: GestureDetector(
                          onTap: () => Get.toNamed('/Details2'),
                          child: Card(
                            child: Container(
                                width: 186,
                                height: 250,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "Assets/images/bromo.jpg",
                                        ),
                                        fit: BoxFit.fill)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(
                                              bottom: size.height * 0.05, left: 20),
                                          child: Text(
                                            'Bromo Mountain',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                          
                                     Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.05, left: 20),
                                          child: Image.asset(
                                              'Assets/icon/location.png'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 40,left: 5),
                                          child: Text(
                                            'Malang, Indonesia',
                                            style: GoogleFonts.urbanist(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Hero(
                        tag: 'Ijen',
                        child: GestureDetector(
                          onTap: () => Get.toNamed('/Details3'),
                          child: Card(
                            child: Container(
                                width: 186,
                                height: 250,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.grey,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "Assets/images/ijen.jpg",
                                        ),
                                        fit: BoxFit.fill)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20, left: 20),
                                          child: Text(
                                            'Taman Nasional \n Ijen',
                                            style: GoogleFonts.urbanist(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom: size.height * 0.05, left: 20),
                                          child: Image.asset(
                                              'Assets/icon/location.png'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 40,left: 5),
                                          child: Text(
                                            'Banyuwangi, Indonesia',
                                            style: GoogleFonts.urbanist(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                          
                                        
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),

            
          ],
        ),
      )
    ],
  );
}
