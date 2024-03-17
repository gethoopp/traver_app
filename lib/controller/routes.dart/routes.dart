import "package:get/get.dart";
import "package:traver/view/auth/login.dart";
import "package:traver/view/auth/register.dart";
import "package:traver/view/intro_page/intro1.dart";
import "package:traver/view/intro_page/intro2.dart";
import "package:traver/view/intro_page/intro3.dart";

appRoute() => [
      GetPage(
          name: '/intro1',
          page: () => const IntroPage1(),
          transition: Transition.rightToLeft),


           GetPage(
          name: '/intro2',
          page: () => const IntroPage2(),
          transition: Transition.rightToLeft),

           GetPage(
          name: '/intro3',
          page: () => const IntroPage3(),
          transition: Transition.rightToLeft),

           GetPage(
          name: '/Login',
          page: () => const Login(),
          transition: Transition.rightToLeft),

          GetPage(
          name: '/Register',
          page: () => const Register(),
          transition: Transition.rightToLeft)
    ];
