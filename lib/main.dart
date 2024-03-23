import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traver/controller/routes.dart/routes.dart';
import 'package:get/get.dart';
import 'package:traver/view/auth/Login/login.dart';
import 'package:traver/view/auth/Register/create_account.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      child: GetMaterialApp(
          getPages: appRoute(),
          debugShowCheckedModeBanner: false,
          title: 'Traver App',
          home: const CreateAccount()),
    );
  }
}
