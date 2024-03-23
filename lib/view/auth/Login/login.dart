import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    void onPressed(){
      setState(() {
        Get.toNamed('/CreateAccount');
      });
      
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.2,
                  ),
                  child: const ImageIcon(
                    AssetImage('Assets/icon/icon.png'),
                    size: 150,
                  ).animate().fadeIn().then(delay: 200.microseconds).slide()),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.height * 0.04),
                child: SizedBox(
                  width: 315,
                  height: 50,
                  child:
                      buttonemail().animate().fadeIn(duration: const Duration(seconds: 1)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.height * 0.04),
                child: SizedBox(
                    width: 315,
                    height: 50,
                    child:
                        buttonPass().animate().fadeIn(duration: const Duration(seconds: 1))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: Row(children: [
                  const Icon(Icons.check_box_rounded, color: Colors.grey),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Remember me",
                    style: GoogleFonts.headlandOne(
                        fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed('/Forgot'),
                    child: Text(
                      "Forgot Password",
                      style: GoogleFonts.headlandOne(
                          fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ]).animate().fadeIn(duration: const Duration(seconds: 1)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: size.height * 0.1),
            child: SizedBox(
              width: 315,
              height: 50,
              child: userbutton(
                onPressed: onPressed,
                text: 'Create Account',
                colors: Colors.grey,
              ),
            ),
          ).animate().fadeIn().then(delay: 500.microseconds).slide(
            curve: Curves.easeIn,
            begin: const Offset(-5, 0)
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              width: 315,
              height: 50,
              child: userbutton(
                  text: 'Sign In', colors: Colors.amber, colorss: Colors.amber),
            ).animate().fadeIn().then(delay: 500.microseconds).slide(begin: const Offset(-5, 0)),
          ),
        ],
      ),
    );
  }
}
