import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../widgets/auth_util.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  Future<void> signInUser(
      {required String email, required String password}) async {
    emit(SigninLoading());
    try {
      // ignore: unused_local_variable
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      AuthUtil.storeUserEmail(email);
      emit(SigninSuccess(successMessage: "Successfully signed in."));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SigninFailure(errorMessage: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        // showSnackBar(context, );
        emit(SigninFailure(
            errorMessage: "Wrong password provided for that user."));
      }
    } catch (e) {
      emit(SigninFailure(errorMessage: e.toString()));
    }
  }
}
