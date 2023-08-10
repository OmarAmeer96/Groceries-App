import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  Future<void> signUpUser(
      {required String email, required String password}) async {
    emit(SignupLoading());
    try {
      // ignore: unused_local_variable
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.sendEmailVerification();
      emit(SignupSuccess(
          successMessage:
              "Your account successfully created.\nPlease verify your email then Sign in."));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignupFailure(errorMessage: "The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        // showSnackBar(context, );
        emit(SignupFailure(
            errorMessage: "The account already exists for that email."));
      }
    } catch (e) {
      emit(SignupFailure(errorMessage: e.toString()));
    }
  }
}
