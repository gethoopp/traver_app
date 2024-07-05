part of 'verify_bloc.dart';

@immutable
sealed class VerifyEvent {}

final class Verifytoken extends VerifyEvent{}

final class DataProd extends VerifyEvent{}