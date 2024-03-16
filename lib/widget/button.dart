  import 'package:flutter/material.dart';

TextFormField buttonemail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email Address',
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

  TextFormField buttonPass() {
    return TextFormField(
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