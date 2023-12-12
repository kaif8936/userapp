// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:provider/provider.dart';
import 'package:userapp/src/providers/registration_provider.dart';
import 'package:userapp/src/utils/app_images.dart';
import 'package:userapp/src/utils/routes.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';
import 'package:userapp/src/widgets/phone_field.dart';

class RegistrationDetailsScreen extends StatefulWidget {
  final String email;
  const RegistrationDetailsScreen({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  State<RegistrationDetailsScreen> createState() =>
      _RegistrationDetailsScreenState();
}

class _RegistrationDetailsScreenState extends State<RegistrationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    const initialCountryCode = 'IN';
    var country =
        countries.firstWhere((element) => element.code == initialCountryCode);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Consumer<RegistrationProvider>(
          builder: (context, registrationProvider, child) {
            return Padding(
              padding: EdgeInsets.all(24.h),
              child: Form(
                key: registrationProvider.otpFormKey,
                onChanged: registrationProvider.validateForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context)
                            .requestFocus(registrationProvider.imageFocusNode);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: registrationProvider.isFocused ? 10.0 : 40.0,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: registrationProvider.isFocused ? 100.0 : 127.0,
                      height: registrationProvider.isFocused ? 100.0 : 127.0,
                      child: Image.asset(
                        AppImages.splashLogo,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: registrationProvider.isFocused ? 10.0 : 30.0,
                    ),
                    Text(
                      'Sign up your account',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      controller: registrationProvider.nameController,
                      label: 'Full Name',
                      hint: 'Placeholder',
                      onFocusChange: (hasFocus) {
                        registrationProvider.isFocused = hasFocus;
                      },
                      onTap: () {},
                    ),
                    const SizedBox(height: 10),
                    // Text(email),
                    CustomIntlPhoneField(
                      label: 'Phone Number',
                      controller: registrationProvider.numberController,
                      onPhoneNumberChanged: (phone) {
                        if (phone!.number.length >= country.minLength &&
                            phone.number.length <= country.maxLength) {
                          registrationProvider.selectedPhone = true;
                        } else {
                          registrationProvider.selectedPhone = false;
                        }
                        registrationProvider.validateForm();
                      },
                      initialCountryCode: initialCountryCode,
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      controller: registrationProvider.emailController,
                      label: 'Email',
                      hint: 'Placeholder',
                      onFocusChange: (hasFocus) {
                        registrationProvider.isFocused = hasFocus;
                      },
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                                .hasMatch(value)) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onTap: () {},
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      controller: registrationProvider.passwordController,
                      obscureText: !registrationProvider.obscureText,
                      label: 'Password',
                      hint: '**********',
                      suffixIcon: IconButton(
                        onPressed: registrationProvider.toggleObscureText,
                        icon: Icon(
                          registrationProvider.obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !RegExp(r'^.{6,}$').hasMatch(value)) {
                          return 'Minimum 6 digit password';
                        }
                        return null;
                      },
                      onFocusChange: (hasFocus) {
                        registrationProvider.isFocused = hasFocus;
                      },
                      onTap: () {},
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      controller: registrationProvider.repeatPasswordController,
                      obscureText: !registrationProvider.obscureText,
                      label: 'Repeat Password',
                      hint: '**********',
                      suffixIcon: IconButton(
                        onPressed: registrationProvider.toggleObscureText,
                        icon: Icon(
                          registrationProvider.obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        } else if (value !=
                            registrationProvider.passwordController.text) {
                          return 'Passwords do not match';
                        } else if (value.length < 6) {
                          return 'Password should be at least 6 characters';
                        }
                        return null;
                      },
                      onFocusChange: (hasFocus) {
                        registrationProvider.isFocused = hasFocus;
                      },
                      onTap: () {},
                    ),
                    SizedBox(height: 27.h),
                    Button(
                      onTap: () async {
                        if (registrationProvider.otpFormKey.currentState!
                            .validate()) {
                          // await registrationProvider.login();
                          if (registrationProvider.isLoading) {
                          } else {
                            // ignore: use_build_context_synchronously
                            context.push(Routes.registrationSuccessful);
                          }
                        }
                      },
                      text: 'SIGN UP',
                      enabled: registrationProvider.isButtonEnabled,
                      isLoading: registrationProvider.isLoading,
                    ),
                    SizedBox(height: 25.h),
                    // const Text('Or continue with'),
                    // SizedBox(height: 25.h),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(16.sp),
                    //         border: Border.all(
                    //           color: Colors.black.withOpacity(0.1),
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //       child: InkWell(
                    //         onTap: () {
                    //           // Add Facebook login logic here
                    //         },
                    //         child: Padding(
                    //           padding: EdgeInsets.symmetric(
                    //               vertical: 13.h, horizontal: 22.w),
                    //           child: Row(
                    //             children: [
                    //               const Icon(Icons.facebook,
                    //                   color: Colors.black),
                    //               SizedBox(width: 8.w),
                    //               Text(
                    //                 'Facebook',
                    //                 style: TextStyle(
                    //                   color: Colors.black,
                    //                   fontSize: 14.sp,
                    //                   fontWeight: FontWeight.bold,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(width: 10),
                    //     Container(
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(16.sp),
                    //         border: Border.all(
                    //           color: Colors.black.withOpacity(0.1),
                    //           width: 2.0,
                    //         ),
                    //       ),
                    //       child: InkWell(
                    //         onTap: () {
                    //           // Add Google login logic here
                    //         },
                    //         child: Padding(
                    //           padding: EdgeInsets.symmetric(
                    //               vertical: 13.h, horizontal: 22.w),
                    //           child: Row(
                    //             children: [
                    //               const Icon(Icons.facebook,
                    //                   color: Colors.black),
                    //               SizedBox(width: 8.w),
                    //               Text(
                    //                 'Google',
                    //                 style: TextStyle(
                    //                   color: Colors.black,
                    //                   fontSize: 14.sp,
                    //                   fontWeight: FontWeight.bold,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // const SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Sign in",
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
