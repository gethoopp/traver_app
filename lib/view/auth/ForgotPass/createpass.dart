import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class CreatePass extends StatelessWidget {
  const CreatePass({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  child: const Text('Forgot Password '),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, top: size.height * 0.03),
                  child: Text(
                    'Create New Password',
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
              child: SizedBox(width: 340, height: 50, child: buttonPass()),
            ),

                        Padding(
              padding: EdgeInsets.only(top: size.height * 0.01),
              child: SizedBox(width: 300, height: 50, child: buttonPass()),
            ),

             Padding(
              padding:  EdgeInsets.only(top: size.height * 0.04,left: 50 ),
              child: Text('Your Password Must Include At Least One Symbol And Be 8 Or More Characters Long ',style: GoogleFonts.headlandOne(
                color : Colors.grey,
                fontSize: 12
              ),),
            ),

            Padding(
              padding:  EdgeInsets.only(top: size.height * 0.34),
              child: SizedBox(
                width: 315,
                height: 50,
                child: userbutton(text: 'Save', colors: Colors.transparent,colorss: Colors.amber)),
            ),

            
          ],
        ),
      ),
    );
  }
}
