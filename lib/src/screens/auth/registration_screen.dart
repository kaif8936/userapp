import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:userapp/src/utils/app_images.dart';
import 'package:userapp/src/utils/routes.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';

// ignore: must_be_immutable
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isButtonEnabled = false;
  bool obscureText = false;
  bool isFocused = false;
  bool isLoading = false;
  final FocusNode _imageFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _imageFocusNode.dispose();

    super.dispose();
  }

  void _validateForm() {
    final isEmailValid = emailController.text.isNotEmpty;
    final isPasswordValid = passwordController.text.length >= 6;
    final doPasswordsMatch =
        passwordController.text == repeatPasswordController.text;
    setState(() {
      isButtonEnabled = isEmailValid && isPasswordValid && doPasswordsMatch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(24.h),
          child: Form(
            key: _formKey,
            onChanged: _validateForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(_imageFocusNode);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(
                        milliseconds: 500), // Adjust the duration as needed
                    // width: isFocused ? 100.0 : 80.0, // Change size when focused
                    height: isFocused ? 10.0 : 40.0,
                  ),
                ),

                // Logo
                AnimatedContainer(
                  duration: const Duration(
                      milliseconds: 500), // Adjust the duration as needed
                  width: isFocused ? 100.0 : 127.0, // Change size when focused
                  height: isFocused ? 100.0 : 127.0,
                  child: Image.asset(
                    AppImages.splashLogo,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(
                      milliseconds: 500), // Adjust the duration as needed
                  // width: isFocused ? 100.0 : 80.0, // Change size when focused
                  height: isFocused ? 10.0 : 30.0,
                ),
                // "Sign in your account" text
                Text(
                  'Sign up your account',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                // Email text field
                CustomTextFormField(
                  controller: emailController,
                  labelText: 'Email',
                  label: 'Email',
                  hint: 'Placeholder',
                  onFocusChange: (hasFocus) {
                    setState(() {
                      isFocused = hasFocus; // Update focus state
                    });
                  },
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                            .hasMatch(value)) {
                      return 'Please enter your email';
                    }

                    return null; // Return null if the input is valid
                  },
                ),
                const SizedBox(height: 10),
                // Password text field
                CustomTextFormField(
                  controller:
                      passwordController, // Pass the password controller
                  labelText: 'Password',
                  obscureText: !obscureText,
                  label: 'Password',
                  hint: '**********',
                  // focusNode: passwordFocusNode,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(r'^.{6,}$').hasMatch(value)) {
                      return 'Minimum 6 digit password';
                    }
                    return null; // Return null if the input is valid
                  },
                  onFocusChange: (hasFocus) {
                    setState(() {
                      isFocused = hasFocus; // Update focus state
                    });
                  },
                  // If this is a password field
                ),
                const SizedBox(height: 10),
                // Password text field
                CustomTextFormField(
                  controller:
                      repeatPasswordController, // Pass the password controller
                  labelText: 'Repeat Password',
                  obscureText: !obscureText,
                  label: 'Repeat Password',
                  hint: '**********',
                  // focusNode: passwordFocusNode,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    } else if (value != passwordController.text) {
                      return 'Passwords do not match';
                    } else if (value.length < 6) {
                      return 'Password should be at least 6 characters';
                    }
                    return null; // Return null if the input is valid
                  },
                  onFocusChange: (hasFocus) {
                    setState(() {
                      isFocused = hasFocus; // Update focus state
                    });
                  },
                  // If this is a password field
                ),
                SizedBox(height: 27.h),
                Button(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        isLoading = true; // Show loading indicator
                      });
                      // Delay for 3 seconds
                      await Future.delayed(const Duration(seconds: 3));
                      setState(() {
                        isLoading = false; // Show loading indicator
                      });
                      // Hide the loading indicator

                      // Navigate to the "LoginSuccessful" page
                      // ignore: use_build_context_synchronously
                       context.push("${Routes.registration}/${Routes.registrationSuccessful}");
                    }
                  },
                  text: isLoading
                      ? 'LOADING....' // Show loading indicator
                      : 'NEXT',
                  enabled: isButtonEnabled,
                ),
                SizedBox(height: 25.h),
                const Text('Or continue with'),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.sp),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.1), // Set the border color to grey
                          width: 2.0, // Set the border width
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Add Facebook login logic here
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 22.w),
                          child: Row(
                            children: [
                              const Icon(Icons.facebook, color: Colors.black),
                              SizedBox(width: 8.w),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.sp),
                        border: Border.all(
                          color: Colors.black
                              .withOpacity(0.1), // Set the border color to grey
                          width: 2.0, // Set the border width
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Add Facebook login logic here
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 22.w),
                          child: Row(
                            children: [
                              const Icon(Icons.facebook, color: Colors.black),
                              SizedBox(width: 8.w),
                              Text(
                                'Google',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Don't have an account? Sign up
                Text.rich(TextSpan(text: "Don't have an account? ", children: [
                  TextSpan(
                    text: "Sign in",
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
