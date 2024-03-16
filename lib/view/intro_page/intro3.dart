import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:traver/controller/controller.dart';
import 'package:traver/widget/intro.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  void updateState() {
    setState(() {
      selectedIndex++;
      Get.offAllNamed('Login');
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: introMethod(
          images: 'Assets/images/pics3.jpeg',
          updateState,
          num: size.height * 1,
          text: 'Get ready for \next trip',
          text1: 'Find thousands of tourist destinations \nready for you to visit',
          buttontext: 'Get Started'),
    );
  }
}
