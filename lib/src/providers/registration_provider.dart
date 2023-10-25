// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:userapp/src/screens/auth/otp_verification.dart';

class RegistrationProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  bool selectedPhone = false;
  final FocusNode imageFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

  bool isButtonEnabled = false;
  bool obscureText = false;
  bool isLoading = false;
  bool _isFocused = false; // Private variable to store the focus state
  bool get isFocused => _isFocused; // Getter for isFocused

  set isFocused(bool value) {
    _isFocused = value; // Setter for isFocused
    notifyListeners();
  }

  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
  }

  void validateForm() {
    final isPhone = selectedPhone;
    final isEmailValid = emailController.text.isNotEmpty;
    final isPasswordValid = passwordController.text.length >= 6;
    final doPasswordsMatch =
        passwordController.text == repeatPasswordController.text;
    isButtonEnabled =
        isEmailValid && isPasswordValid && doPasswordsMatch && isPhone;
    notifyListeners();
  }

  void toggleObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Future<void> login() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }

  //////////
  TextEditingController emailOtpController = TextEditingController();
  String generatedOTP = '';
  Future<void> generateAndSendOTP(BuildContext context) async {
    isLoading = true;
    notifyListeners();

    final random = Random();
    final otp = (10000 + random.nextInt(90000)).toString();
    const apiUrl =
        "http://ec2-3-7-9-101.ap-south-1.compute.amazonaws.com/app6/sendSignUpOTPMail";
    final email = emailOtpController.text;

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode({"email": email, "otp": otp}),
    );

    if (response.statusCode == 200) {
      generatedOTP = otp;
      notifyListeners();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTPVerificationScreen(otp, email),
        ),
      );
    } else {
      final errorResponse = jsonDecode(response.body);
      final errorMessage = errorResponse['error'];
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    }

    isLoading = false;
    notifyListeners();
  }

  void validateEmailForm() {
    // final isEmailValid = emailOtpController.text.isNotEmpty;
    final isEmailValid = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(emailOtpController.text);
    isButtonEnabled = isEmailValid;
    notifyListeners();
  }

  void validateRegisterForm() {
    final isPhone = selectedPhone;
    final isNameValid = nameController.text.isNotEmpty;
    final isPasswordValid = passwordController.text.length >= 6;
    final doPasswordsMatch =
        passwordController.text == repeatPasswordController.text;
    isButtonEnabled =
        isPasswordValid && doPasswordsMatch && isPhone && isNameValid;
    notifyListeners();
  }
}
