import "package:get/get.dart";
import "package:traver/view/intro_page/intro1.dart";
import "package:traver/view/intro_page/intro2.dart";
import "package:traver/view/intro_page/intro3.dart";

appRoute() => [
      GetPage(
          name: '/intro1',
          page: () => const IntroPage1(),
          transition: Transition.rightToLeftWithFade),


           GetPage(
          name: '/intro2',
          page: () => const IntroPage2(),
          transition: Transition.rightToLeftWithFade),

           GetPage(
          name: '/intro3',
          page: () => const IntroPage3(),
          transition: Transition.rightToLeftWithFade)
    ];
