import 'package:flutter_test/flutter_test.dart';
import 'package:traver/models/models.dart';

void main() {
  group('Check is user and password is available', () {
    //expect(register.username, );
     RegisterUser reg;
    reg = RegisterUser();
    expect(reg.username, isA<String>());
   test("Check is user string or not", (){
    expect(reg.username, isA<String>());
    expect(reg.username, equals("Boby"));
   });
  });

  
}
