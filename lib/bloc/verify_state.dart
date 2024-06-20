part of 'verify_bloc.dart';

@immutable
sealed class VerifyState {}

final class VerifyInitial extends VerifyState {}


final class AuthAuthentic extends VerifyState{}

final class AuthUnAuthentic extends VerifyState{}

final class VerifyErr extends VerifyState {
  final String message;

VerifyErr(this.message);
}