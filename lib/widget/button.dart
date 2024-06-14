import 'package:flutter/material.dart';
import 'package:traver/controller/controller.dart';

TextFormField buttonemail({String? text, TextEditingController? controller}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
        labelText: text ?? 'Email Address',
        floatingLabelStyle: const TextStyle(color: Colors.amber),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(color: Colors.amber))),
  );
}

TextFormField buttonPass() {
  return TextFormField(
    controller: passwordController,
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    obscuringCharacter: '*',
    decoration: const InputDecoration(
        labelText: 'Password',
        suffixIcon: ImageIcon(
          AssetImage('Assets/icon/eye-slash.png'),
          color: Colors.black,
        ),
        floatingLabelStyle: TextStyle(color: Colors.amber),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(color: Colors.amber))),
  );
}
