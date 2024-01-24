import "package:equatable/equatable.dart";
import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:flutter_bloc/flutter_bloc.dart";
import "package:formz/formz.dart";
import "package:service_masters/data/models/form/email_model.dart";
import "package:service_masters/data/models/form/phone_number.dart";

part "verify_user_state.dart";

class VerifyUserStateCubit extends Cubit<VerifyUserState> {
  VerifyUserStateCubit() : super(const VerifyUserState());
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  Future<void> sendOTP(String phoneNumber) async {
    try {
      Future<void> verificationCompleted(
          firebase_auth.PhoneAuthCredential credential) async {
        await _signInWithCredential(credential);
      }

      void verificationFailed(
          firebase_auth.FirebaseAuthException authException) {
        emit(VerifyUserState(
            errorMessage: "Verification Failed: ${authException.message}"));
      }

      void codeSent(String verificationId, int? resendToken) {
        emit(const VerifyUserState());
        // You can store the verificationId and use it for manual verification
        // e.g., emit(PhoneAuthState(verificationId: verificationId));
      }

      void codeAutoRetrievalTimeout(String verificationId) {
        emit(const VerifyUserState());
      }

      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
        timeout: const Duration(seconds: 60),
      );
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    }
  }

  Future<void> verifyOTP(String verificationId, String otp) async {
    try {
      final credential = firebase_auth.PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otp);
      await _signInWithCredential(credential);
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    }
  }

  Future<void> _signInWithCredential(
      firebase_auth.PhoneAuthCredential credential) async {
    try {
      final authResult = await _auth.signInWithCredential(credential);
      emit(VerifyUserState(user: authResult.user));
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    }
  }
}
