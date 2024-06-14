import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

part 'auth_cubit_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());

  Future<dynamic> registeruser(String userNameController,
      String passwordController, String emailcontroller) async {
    try {
      Dio dio = Dio();
      final result = await dio.post("http://192.168.1.21:8080/api/Register",
          data: {
            "nama_user": userNameController,
            "email_user": emailcontroller,
            "password_user": passwordController,
          },
          options: Options(contentType: 'application/json'));

      if (result.statusCode == 200) {
        emit(AuthSucces(result.data));
        Get.offAllNamed('/Login');
      } else {
        const SnackBar(
            content: Dialog(
          child: Center(
            child: Text("Harap, Ulangi Kembali!"),
          ),
        ));
      }
    } catch (e) {
      e.toString();
    }
  }

  void loginuser( String emailController,String passwordController) async {
    const storage =  FlutterSecureStorage();
    try {
      Dio dio = Dio();
      final result = await dio.post("http://192.168.1.21:8080/api/login",
          data: {
            "email_user": emailController,
            "password_user": passwordController,
          },
          options: Options(contentType: 'application/json'));

      if (result.statusCode == 200) {
        emit(AuthSucces(result.data));
        await storage.write(key: "Jwt_token_user", value: result.data['token']);
        Get.offAllNamed('/Homepage');
      }
    } catch (e) {
      Get.snackbar(e.toString(), "Harap Ulang Kembali");
    }
  }
}
