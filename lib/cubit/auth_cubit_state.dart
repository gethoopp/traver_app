part of 'auth_cubit_cubit.dart';

@immutable
sealed class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}

// ignore: must_be_immutable
final class AuthSucces extends AuthCubitState {
  final dynamic data;

  AuthSucces(this.data);

  List<Object> get props => [data];
}



final class AuthErr extends AuthCubitState {
  final String message;

  AuthErr(this.message);
}


