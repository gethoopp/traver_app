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
        Get.snackbar(result.data["message"], "Harap Ulang Kembali");
      }
    } on DioException catch (e) {
      return e;
    }
  }

  void loginuser(String emailController, String passwordController) async {
    const storage = FlutterSecureStorage();
    try {
      Dio dio = Dio();
      final result = await dio.post("http://192.168.1.21:8080/api/login",
          data: {
            "email_user": emailController,
            "password_user": passwordController,
          },
          options: Options(contentType: 'application/json'));

          

      if (result.statusCode == 200 || result.statusCode == 201) {
        emit(AuthSucces(result.data));
        await storage.write(key: "Jwt_token_user", value: result.data['TOKEN']);

        print(storage.read(key: "Jwt_token_user"));
        Get.offAllNamed('/Homepage');
      } else {
        Get.snackbar(result.data["message"], "Harap Ulang Kembali");
      }
    } on DioException catch (e) {
      return;
    }
  }
}
