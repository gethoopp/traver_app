import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:traver/widget/button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            ],
          )
        ],
      ),
    );
  }


}
