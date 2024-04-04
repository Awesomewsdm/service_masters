import "dart:async";

import "package:equatable/equatable.dart";
import "package:firebase_auth/firebase_auth.dart" as firebase_auth;
import "package:flutter_bloc/flutter_bloc.dart";
import "package:formz/formz.dart";
import "package:service_masters/data/models/form_inputs/email_model.dart";
import "package:service_masters/data/models/form_inputs/phone_number.dart";

part "verify_user_state.dart";

class VerifyUserCubit extends Cubit<VerifyUserState> {
  VerifyUserCubit() : super(const VerifyUserState());
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  FutureOr<void> phoneNumber(String value) {
    final phoneNumber = PhoneNumber.dirty(value);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        isValid: Formz.validate([phoneNumber]),
        errorMessage: phoneNumber.displayError?.message ?? "",
      ),
    );
  }

  Future<void> sendOTP(String phoneNumber) async {
    try {
      emit(const VerifyUserState(isLoading: true));

      Future<void> verificationCompleted(
        firebase_auth.PhoneAuthCredential credential,
      ) async {
        await _signInWithCredential(credential);
      }

      void verificationFailed(
        firebase_auth.FirebaseAuthException authException,
      ) {
        emit(
          VerifyUserState(
            errorMessage: "Verification Failed: ${authException.message}",
          ),
        );
      }

      void codeSent(String verificationId, int? resendToken) {
        emit(const VerifyUserState(isCodeSent: true));
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
      );
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    } finally {
      emit(const VerifyUserState());
    }
  }

  Future<void> verifyOTP(String verificationId, String otp) async {
    try {
      emit(const VerifyUserState(isLoading: true)); // Add loading state

      final credential = firebase_auth.PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: otp,
      );
      await _signInWithCredential(credential);
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    } finally {
      emit(const VerifyUserState());
    }
  }

  Future<void> _signInWithCredential(
    firebase_auth.PhoneAuthCredential credential,
  ) async {
    try {
      emit(const VerifyUserState(isLoading: true));

      final authResult = await _auth.signInWithCredential(credential);
      emit(VerifyUserState(user: authResult.user));
    } catch (e) {
      emit(VerifyUserState(errorMessage: "Error: $e"));
    } finally {
      emit(const VerifyUserState());
    }
  }
}
