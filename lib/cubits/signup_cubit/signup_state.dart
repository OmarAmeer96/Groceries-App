part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

// ignore: must_be_immutable
final class SignupSuccess extends SignupState {
  String successMessage;

  SignupSuccess({required this.successMessage});
}

final class SignupLoading extends SignupState {}

// ignore: must_be_immutable
final class SignupFailure extends SignupState {
  String errorMessage;

  SignupFailure({required this.errorMessage});
}
