import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traver/controller/controller.dart';
import 'package:traver/widget/button.dart';
import 'package:traver/widget/userbutton.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  void onPressed(){
    Get.toNamed('CreateEmail');
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.05, top: size.height * 0.05),
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
                  'What\'s is your name?  ',
                  style: GoogleFonts.headlandOne(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 310,
                height: 110,
                child: Padding(
                  padding: EdgeInsets.only(top: size.height * 0.08),
                  child: buttonemail(
                    controller: firstuserNameController,
                    text: "First Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                    width: 310,
                    height: 50,
                    child: buttonemail(
                      controller: lastusernameController,
                      text: "Last Name",
                    )),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Divider(
                thickness: 4,
                color: Colors.black,
                endIndent: size.width * 0.7,
              )),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: SizedBox(
                width: 315,
                child: userbutton(
                   onPressed: onPressed,
                    text: 'Input Email',
                    colors: Colors.transparent,
                    colorss: Colors.amber)),
          )
        ],
      ),
    );
  }
}
