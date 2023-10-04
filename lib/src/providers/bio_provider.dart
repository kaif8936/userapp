import 'package:flutter/material.dart';

class BioProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  String? selectedGender;
  bool selectedPhone = false;
  bool isButtonEnabled = false;
  bool isLoading = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void disposeControllers() {
    nameController.dispose();
    genderController.dispose();
    numberController.dispose();
  }

  void validateForm() {
    final isEmailValid = nameController.text.isNotEmpty;
    final isGenderSelected = selectedGender != null;
    final isPhone = selectedPhone;
    isButtonEnabled = isEmailValid && isGenderSelected && isPhone;
    notifyListeners();
  }

  Future<void> login() async {
    // Simulate a login process
    isLoading = true;
    notifyListeners();

    // Simulate a delay for 3 seconds
    await Future.delayed(const Duration(seconds: 3));

    isLoading = false;
    notifyListeners();
  }
}
