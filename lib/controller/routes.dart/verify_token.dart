import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class Services {
  final storage = const FlutterSecureStorage();

  Future<String?> readToken() async {
    return await storage.read(key: "Jwt_token_user");
  }

  Future<void> deleteToken() {
    return storage.delete(key: "Jwt_token_user");
  }

  bool isverifyToken(String? token) {
    try {
      DateTime expirated = JwtDecoder.getExpirationDate(token!);

      return expirated.isBefore(DateTime.now());
    } catch (e) {
      return true;
    }
  }
}
