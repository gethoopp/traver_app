import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/widget/favplace.dart';
import 'package:traver/widget/popularpackage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Expanded(
        flex: 4,
        child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.width * 0.25),
                          child:  Text('Hello, ${firstuserNameController.text} '  ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications_none_rounded))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverAppBar(
                          collapsedHeight: 200,
                          pinned: true,
                          floating: true,
                          expandedHeight: 100,
                          flexibleSpace: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Where do you \nwant to explore today?',
                                  style: GoogleFonts.headlandOne(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 50),
                                child: SizedBox(
                                  width: 315,
                                  height: 50,
                                  child: SearchBar(
                                    trailing: [Icon(Icons.search)],
                                    shadowColor: WidgetStatePropertyAll(
                                        Colors.transparent),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Choose Category',
                          style: GoogleFonts.headlandOne(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const Text('Sell all')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: CustomScrollView(
                        scrollDirection: Axis.horizontal,
                        slivers: <Widget>[
                          SliverList(
                              delegate: SliverChildListDelegate([
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.06),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      Shimmer.fromColors(
                                        baseColor: Colors.grey,
                                        highlightColor: Colors.white12,
                                        child: SizedBox(
                                            width: 120,
                                            height: 43,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: ImageIcon(
                                                      AssetImage(
                                                          'Assets/icon/beach.png'),
                                                      size: 35,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Shimmer.fromColors(
                                        baseColor: Colors.grey,
                                        highlightColor: Colors.white,
                                        child: SizedBox(
                                            width: 120,
                                            height: 43,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: ImageIcon(
                                                      AssetImage(
                                                          'Assets/icon/forest.png'),
                                                      size: 35,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Shimmer.fromColors(
                                        baseColor: Colors.grey,
                                        highlightColor: Colors.white,
                                        child: SizedBox(
                                            width: 120,
                                            height: 43,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                    child: ImageIcon(
                                                      AssetImage(
                                                          'Assets/icon/mount.png'),
                                                      color: Colors.red,
                                                      size: 35,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ])),
                        ]),
                  ),
                  SizedBox(height: size.height * 0.45, child: favplace(size)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Popular Package ',
                        style: GoogleFonts.headlandOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const Text('See All'),
                    ],
                  ),
                   popularPackage(size,title: 'Kuta Resort', price: '\$250.000',desc: 'A Resort is a place used for \nvacation, relaxation or as a day'),
                   const SizedBox(height: 10,),
                   popularPackage(size,title: 'Jepara Resort', price: '\$150.000',desc: 'A Resort is a place used for \nvacation, relaxation or as a day')
                ],
              ),
            ]),
      ),
    );
  }

  
}
