import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/widget/intro.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {

  void updateState(){
    setState(() {
      selectedIndex++;
      Get.offAllNamed('intro2');
    });


  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: introMethod(
          
          images: 'Assets/images/pics1.jpeg',
          updateState,
          num: size.height * 1,
          text: 'Lets explore \nthe world',
          text1: 'Lets explore the world with us with just a \nfew clicks',
          buttontext: 'Next'),
    );
  }
}
