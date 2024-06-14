import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/controller/routes.dart/routes.dart';
import 'package:get/get.dart';
import 'package:traver/cubit/auth_cubit_cubit.dart';
import 'package:traver/splash.dart';
import 'package:traver/view/auth/Login/login.dart';
import 'package:traver/view/homepage/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void dispose() {
    super.dispose();
    emailController.clear();
    firstuserNameController.clear();
    lastusernameController.clear();
    passwordController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
      child: BlocProvider(
        create: (context) => AuthCubitCubit(),
        child: GetMaterialApp(
            getPages: appRoute(),
            debugShowCheckedModeBanner: false,
            title: 'Traver App',
            home: const Splash()),
      ),
    );
  }
}
