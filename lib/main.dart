import 'package:flutter/material.dart';
import 'package:traver/controller/routes.dart/routes.dart';
import 'package:traver/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      getPages: appRoute(),
      debugShowCheckedModeBanner: false,
      title: 'Traver App',
      home: const Splash()
    );
  }
}

