// ignore_for_file: use_build_context_synchronously, duplicate_ignore

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/providers/registration_provider.dart';
import 'package:userapp/src/utils/app_images.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';
import 'package:provider/provider.dart';

class EmailOtpScreen extends StatefulWidget {
  const EmailOtpScreen({super.key});

  @override
  State<EmailOtpScreen> createState() => _EmailOtpScreenState();
}

class _EmailOtpScreenState extends State<EmailOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Consumer<RegistrationProvider>(
          builder: (context, registrationProvider, child) {
            return Padding(
              padding: EdgeInsets.all(24.h),
              child: Form(
                key: registrationProvider.formKey,
                onChanged: registrationProvider.validateEmailForm,
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
                      'Sign up with Email',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      controller: registrationProvider.emailOtpController,
                      label: 'Email',
                      hint: 'Enter a valid Email',
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

                    SizedBox(height: 27.h),
                    Button(
                      onTap: () async {
                        if (registrationProvider.formKey.currentState!
                            .validate()) {
                          await registrationProvider
                              .generateAndSendOTP(context);
                          registrationProvider.isButtonEnabled = false;
                          if (registrationProvider.isLoading) {
                          } else {
                            // ignore: use_build_context_synchronously
                            // registrationProvider.generateAndSendOTP(context);
                          }
                        }
                      },
                      text: 'SEND OTP',
                      enabled: registrationProvider.isButtonEnabled,
                      // enabled: true,
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
                        TextSpan(text: "Already have an account? ", children: [
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
            );
          },
        ),
      ),
    );
  }
}
