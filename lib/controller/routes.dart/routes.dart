import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:traver/view/auth/Register/create_account.dart";
import "package:traver/view/auth/ForgotPass/createpass.dart";
import "package:traver/view/auth/ForgotPass/forgotpass.dart";
import "package:traver/view/auth/Login/login.dart";
import "package:traver/view/auth/Register/create_email.dart";

import "package:traver/view/intro_page/intro1.dart";
import "package:traver/view/intro_page/intro2.dart";
import "package:traver/view/intro_page/intro3.dart";

appRoute() => [
      GetPage(
          name: '/intro1',
          page: () => const IntroPage1(),
          transition: Transition.rightToLeft), //OnBoard 1

      GetPage(
          name: '/intro2',
          page: () => const IntroPage2(),
          transition: Transition.rightToLeft), //OnBoard 2

      GetPage(
          name: '/intro3',
          page: () => const IntroPage3(),
          transition: Transition.rightToLeft), //OnBoard 3

      GetPage(
          name: '/Login',
          page: () => const Login(),
          transition: Transition.rightToLeft), //Login Page

      GetPage(
          name: '/CreateAccount',
          page: () => const CreateAccount(),
          transition: Transition.fadeIn,
          curve: Curves.easeIn), //Register CreateAccoutName Page

      GetPage(
          name: '/Forgot',
          page: () => const ForgotPass(),
          transition: Transition.rightToLeft), //Forgot Password section Page

      GetPage(
          name: '/CreatePass',
          page: () => const CreatePass(),
          transition: Transition
              .rightToLeft), // Create New Password After input email for Forgot Password Section

              GetPage(
          name: '/CreateEmail',
          page: () => const CreateEmail(),
          transition: Transition
              .rightToLeft,
              curve: Curves.easeIn) // CreateEmail
    ];
