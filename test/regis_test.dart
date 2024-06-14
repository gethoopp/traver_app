

import 'package:flutter_test/flutter_test.dart';
import 'package:traver/models/models.dart';


void main() {
  group('Check is user and password is available', (){
      RegisterUser register = RegisterUser();
      //expect(register.username, );
      expect(register.username, isA<String>());
      
  });

  


  
}
