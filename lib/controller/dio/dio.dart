import "package:dio/dio.dart";

import "package:traver/controller/controller.dart";

class Services {
  final dio = Dio();

  Future<dynamic> registeruser() async {
    try {
      final result = await dio.post("url...",
          data: {
            "nama_user": userNameController,
            "password_user": passwordController
          },
          options: Options(contentType: 'application/json'));

      print(result.data);
    } catch (e) {
      e.toString();
    }
  }
}
