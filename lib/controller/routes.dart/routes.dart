import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:traver/view/auth/Register/create_account.dart";
import "package:traver/view/auth/ForgotPass/createpass.dart";
import "package:traver/view/auth/ForgotPass/forgotpass.dart";
import "package:traver/view/auth/Login/login.dart";
import "package:traver/view/auth/Register/create_email.dart";
import "package:traver/view/auth/Register/create_password.dart";
import "package:traver/view/homepage/details/details_1.dart";
import "package:traver/view/homepage/details/details_2.dart";
import "package:traver/view/homepage/details/details_3.dart";
import "package:traver/view/homepage/home.dart";

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
          transition: Transition.rightToLeft,
          curve: Curves.linear),

      GetPage(
          name: '/CreatePassword',
          page: () => const CreatePassword(),
          transition: Transition.rightToLeft,
          curve: Curves.linear), // CreateEmail

          GetPage(
          name: '/Homepage',
          page: () => const HomePage(),
          transition: Transition.fadeIn,
          curve: Curves.easeIn), // 

             GetPage(
          name: '/Details1',
          page: () => const Details1(),
          transition: Transition.fadeIn,
          curve: Curves.easeIn),
          
            GetPage(
          name: '/Details2',
          page: () => const Details2(),
          transition: Transition.fadeIn,
          curve: Curves.easeIn),
          
          
            GetPage(
          name: '/Details3',
          page: () => const Details3(),
          transition: Transition.fadeIn,
          curve: Curves.easeIn)  //  // 
    ];
