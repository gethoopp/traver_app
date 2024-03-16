import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.height * 0.04),
                child: SizedBox(
                  width: 315,
                  height: 50,
                  child: buttonemail(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.height * 0.04),
                child: SizedBox(width: 315, height: 50, child: buttonPass()),
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
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.headlandOne(
                        fontSize: 14, color: Colors.grey),
                  ),
                ]),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: size.height * 0.1),
            child: SizedBox(
              width: 315,
              height: 50,
              child: userbutton(text: 'Create Account', colors: Colors.grey,),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 25 ),
            child: SizedBox(
              width: 315,
              height: 50,
              child: userbutton(text: 'Sign In', colors: Colors.amber, colorss: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
