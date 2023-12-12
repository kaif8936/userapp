// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:math';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:userapp/src/models/authentication.dart';
import 'package:userapp/src/screens/auth/email_otp_verification.dart';
import 'package:userapp/src/utils/routes.dart';

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
  bool _isFocused = false;
  bool get isFocused => _isFocused;

  set isFocused(bool value) {
    _isFocused = value;
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

///////////////
  Future<void> generateAndReSendOTP(BuildContext context) async {
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OTP Resent'),
        ),
      );
      // OTPVerificationScreen(otp, email);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => OTPVerificationScreen(otp, email),
      //   ),
      // );
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

  Future<void> registerUser(String name, String email, String number,
      String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();

    const apiUrl =
        'http://ec2-3-7-9-101.ap-south-1.compute.amazonaws.com/app/saveUserDataloginSignUpAPI/api/signup';

    final headers = {'Content-Type': 'application/json'};

    final body = json.encode({
      'name': name,
      'number': number,
      'email': email,
      'password': password,
    });

    try {
      final response =
          await http.post(Uri.parse(apiUrl), headers: headers, body: body);
      if (response.statusCode == 201) {
        final Map<String, dynamic> data = json.decode(response.body);
        // final signupResponse = SignupResponse.fromJson(data);

        // final loginTokenID = signupResponse.loginTokenID;

        context.push(Routes.home);
        // Registration successful
        // print('User registered successfully');
      } else if (response.statusCode == 400) {
        // print('Email Already Exists ');
        // Email already exists, navigate to a new page with the message
        context.push(Routes.errorEmailExists);
      }
    } catch (e) {
      // print('Error: $e');
      // Handle network or other errors
    }
    isLoading = false;
    notifyListeners();
  }
}
