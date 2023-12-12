// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:userapp/src/models/authentication.dart';
import 'package:userapp/src/utils/routes.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  final FocusNode imageFocusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> numberFormKey = GlobalKey<FormState>();

  bool isButtonEnabled = false;
  bool obscureText = false;
  bool isLoading = false;
  bool selectedPhone = false;
  bool _isFocused = false;

  bool get isFocused => _isFocused;

  set isFocused(bool value) {
    _isFocused = value;
    notifyListeners();
  }

  void disposeControllers() {
    emailController.dispose();
    passwordController.dispose();
  }

  void validateForm() {
    // final isPhone = selectedPhone;
    final isEmailValid = emailController.text.isNotEmpty;
    final isPasswordValid = passwordController.text.length >= 6;

    isButtonEnabled = isEmailValid && isPasswordValid;
    notifyListeners();
  }

  void validateNumberForm() {
    final isPhone = selectedPhone;
    final isPasswordValid = passwordController.text.length >= 6;
    isButtonEnabled = isPhone && isPasswordValid;
    notifyListeners();
  }

  void toggleObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }

  Future<void> loginWithEmail(
      String email, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();

    const apiUrl =
        'http://ec2-3-7-9-101.ap-south-1.compute.amazonaws.com/app/saveUserDataloginSignUpAPI/api/login';

    final headers = {'Content-Type': 'application/json'};

    final body = json.encode({
      'email': email,
      'password': password,
    });

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        // Login successful, parse the response using the model factory method
        final Map<String, dynamic> data = json.decode(response.body);
        // final loginEmailResponse = LoginEmailResponse.fromJson(data);

        // You can access the response data, for example:
        // final user = loginEmailResponse.user;
        // final newTokenID = loginEmailResponse.newLoginTokenID;

        // You can now navigate to the home page or perform other actions.
        context.push(Routes.home);
      } else if (response.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid credentials. Please try again.'),
          ),
        );
        // print('Login failed');
      }
    } catch (e) {
      // print('Error: $e');
    }
    isLoading = false;
    notifyListeners();
  }

  // --------------
//   Future<void> loginWithNumber(
//       String number, String password, BuildContext context) async {
//     isLoading = true;
//     notifyListeners();
//     const url =
//         'http://ec2-3-7-9-101.ap-south-1.compute.amazonaws.com/app/saveUserDataloginSignUpAPI/api/login-number';

//     final headers = {'Content-Type': 'application/json'};

//     final body = json.encode({
//       'number': number,
//       'password': password,
//     });

//     try {
//       final response = await http.post(
//         Uri.parse(url),
//         headers: headers,
//         body: body,
//       );
//       if (response.statusCode == 200) {
//         // Login successful, parse the response JSON
//         final Map<String, dynamic> data = json.decode(response.body);
//         context.push(Routes.home);
//       } else if (response.statusCode == 401) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Invalid Number or Password'),
//           ),
//         );
//         print('Login failed');
//       }
//     } catch (e) {
//       print('Error: $e');
//     }
//     isLoading = false;
//     notifyListeners();
//   }
// }

  Future<void> loginWithNumber(
      String number, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();

    const apiUrl =
        'http://ec2-3-7-9-101.ap-south-1.compute.amazonaws.com/app/saveUserDataloginSignUpAPI/api/login-number';

    final headers = {'Content-Type': 'application/json'};

    final body = json.encode({
      'number': number,
      'password': password,
    });

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) {
        // Login successful, parse the response using the model factory method
        final Map<String, dynamic> data = json.decode(response.body);
        // final loginPhoneResponse = LoginPhoneResponse.fromJson(data);

        // You can access the response data, for example:
        // final user = loginPhoneResponse.user;
        // final newTokenID = loginPhoneResponse.newLoginTokenID;

        // You can now navigate to the home page or perform other actions.
        context.push(Routes.home);
      } else if (response.statusCode == 401) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid credentials. Please try again.'),
          ),
        );
        // print('Login failed');
      }
    } catch (e) {
      // print('Error: $e');
    }
    isLoading = false;
    notifyListeners();
  }
}
