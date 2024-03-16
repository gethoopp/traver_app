import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traver/controller/controller.dart';
import 'package:traver/widget/intro.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  void updateState() {
    setState(() {
      selectedIndex++;
      Get.offAllNamed('intro3');
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: introMethod(
          images: 'Assets/images/pics2.jpeg',
          updateState,
          num: size.height * 1,
          text: 'Visit tourist \nattractions',
          text1: 'Find thousands of tourist destinations \nready for you to visit',
          buttontext: 'Next'),
    );
  }
}
