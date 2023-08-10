part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

// ignore: must_be_immutable
final class SigninSuccess extends SigninState {
  String successMessage;

  SigninSuccess({required this.successMessage});
}

final class SigninLoading extends SigninState {}

// ignore: must_be_immutable
final class SigninFailure extends SigninState {
  String errorMessage;

  SigninFailure({required this.errorMessage});
}
