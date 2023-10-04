import 'package:flutter/material.dart';

class RegistrationProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();
  final FocusNode imageFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isButtonEnabled = false;
  bool obscureText = false;
  // bool isFocused = false;
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
    final isEmailValid = emailController.text.isNotEmpty;
    final isPasswordValid = passwordController.text.length >= 6;
    final doPasswordsMatch =
        passwordController.text == repeatPasswordController.text;
    isButtonEnabled = isEmailValid && isPasswordValid && doPasswordsMatch;
    notifyListeners();
  }

  void toggleObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }
  Future<void> login() async {
    // Simulate a login process
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 3));
    isLoading = false;
    notifyListeners();
  }
}
