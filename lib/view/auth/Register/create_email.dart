import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class CreateEmail extends StatelessWidget {
  const CreateEmail({super.key});
 void onPressed(){
    Get.toNamed('CreatePassword');
  }
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
                      onPressed: () => Get.back(),
                      icon: const Icon(Icons.arrow_back)),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, top: size.height * 0.05),
                  child: const Text('Create Your Account'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.1, top: size.height * 0.03),
                  child: Text(
                    'And, your email?',
                    style: GoogleFonts.headlandOne(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(size.height * 0.035),
              child: SizedBox(width: 340, height: 50, child: buttonemail(
                controller: emailController
              )),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: size.width * 0.04 ),
                  child: Text(
                    'I\'d Like To Recieved Marketing and Policy \nCommunication From Traver And It\'s Partners',
                    style: GoogleFonts.headlandOne(
                        fontSize: 10, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.black,
                  activeTrackColor: Colors.white,
                  thumbColor: WidgetStateProperty.all(Colors.black),
                  trackOutlineColor: WidgetStateProperty.all(Colors.black),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Divider(
                  thickness: 4,
                  color: Colors.black,
                  endIndent: size.width * 0.3,
                ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: SizedBox(
                  width: 315,
                  height: 50,
                  child: userbutton(
                    onPressed: onPressed,
                      text: 'Create Password',
                      colors: Colors.transparent,
                      colorss: Colors.amber)),
            )
          ],
        ),
      ),
    );
  }
}
