import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traver/controller/verifyToken/verify_token.dart';

part 'verify_event.dart';
part 'verify_state.dart';

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc() : super(VerifyInitial()) {
    on<Verifytoken>((event, emit) async {
      try {
      String? token = await Services().readToken();

      if (token == null || Services().isverifyToken(token)) {
        emit(AuthUnAuthentic());
      } else {
        emit(AuthAuthentic());
      }
    } catch (e) {
      emit(VerifyErr("Error While Checking Token"));
    }
    });
  }
}

class DataGet extends Bloc<VerifyEvent, VerifyState> {
  DataGet() : super(VerifyInitial()) {
    on<DataProd>((event, emit) {
       try {
         
       } catch (e) {
         
       }
    });
  }
}

