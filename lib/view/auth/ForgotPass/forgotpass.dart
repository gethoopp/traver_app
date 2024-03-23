import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05, top: size.height * 0.02),
                  child: IconButton(
                      onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, top: size.height * 0.05),
                  child: const Text('Input Your Email'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, top: size.height * 0.03),
                  child: Text(
                    'Forgot Your Password?',
                    style: GoogleFonts.headlandOne(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(size.height * 0.06),
              child: SizedBox(width: 340, height: 50, child: buttonemail()),
            ),

            Padding(
              padding:  EdgeInsets.only(top: size.height * 0.05),
              child: SizedBox(
                width: 315,
                height: 50,
                child: userbutton(text: 'Submit', colors: Colors.transparent,colorss: Colors.amber)),
            )
          ],
        ),
      ),
    );
  }
}
