import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/cubit/auth_cubit_cubit.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

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
                    'Create a password',
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
              child: SizedBox(width: 340, height: 50, child: buttonPass()),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Your password must include at least one symbols and be 8\nor more character long',
                    style: GoogleFonts.headlandOne(
                        fontSize: 10, color: Colors.grey),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Divider(
                thickness: 4,
                color: Colors.black,
                endIndent: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: SizedBox(
                  width: 315,
                  height: 50,
                  child: userbutton(
                      onPressed: () {
                        context.read<AuthCubitCubit>().registeruser(
                              firstuserNameController.text +
                                  lastusernameController.text,
                              passwordController.text,
                              emailController.text,
                            );
                      },
                      text: 'Verification',
                      colors: Colors.transparent,
                      colorss: Colors.amber)),
            )
          ],
        ),
      ),
    );
  }
}
