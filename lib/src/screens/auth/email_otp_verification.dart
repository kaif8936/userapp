// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:userapp/src/providers/registration_provider.dart';
import 'package:userapp/src/screens/auth/registration.dart';
import 'package:userapp/src/utils/app_images.dart';
// import 'package:userapp/src/utils/routes.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String generatedOTP;
  final String email;
  const OTPVerificationScreen(this.generatedOTP, this.email, {Key? key})
      : super(key: key);

  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final otpController = TextEditingController();
  bool isButtonEnabled = false;
  // bool isLoading = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void verifyOTP() {
    final email = widget.email;
    final enteredOTP = otpController.text;

    if (enteredOTP == widget.generatedOTP) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RegistrationScreen(
            email: email,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OTP does not match. Please try again.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<RegistrationProvider>(
          builder: (context, otpResendProvider, child) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
              child: Form(
                key: formKey,
                onChanged: () {
                  if (formKey.currentState!.validate()) {
                    isButtonEnabled = otpController.text.length >= 5;
                  } else {
                    isButtonEnabled = false;
                  }
                  setState(() {}); // Ensure the UI updates
                },
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context)
                            .requestFocus(otpResendProvider.imageFocusNode);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: otpResendProvider.isFocused ? 10.0 : 40.0,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: otpResendProvider.isFocused ? 100.0 : 127.0,
                      height: otpResendProvider.isFocused ? 100.0 : 127.0,
                      child: Image.asset(
                        AppImages.splashLogo,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: otpResendProvider.isFocused ? 10.0 : 30.0,
                    ),
                    Text(
                      'OTP Verication',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Text(
                    //   'Generated OTP: ${widget.generatedOTP}',
                    //   style: const TextStyle(fontWeight: FontWeight.bold),
                    // ),
                    CustomTextFormField(
                      keyboardType: TextInputType.number,
                      controller: otpController,
                      label: 'Enter Otp',
                      hint: '5-Digit Otp',
                      onFocusChange: (hasFocus) {
                        otpResendProvider.isFocused = hasFocus;
                      },
                      onTap: () {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the OTP';
                        } else if (value.length != 5) {
                          return 'Please enter a 5-digit OTP';
                        }
                        return null;
                      },
                    ),
                    // SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () async {
                            otpResendProvider.generateAndReSendOTP(context);
                          },
                          child: const Text(
                            'Resend OTP',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        // const Text(
                        //   "0.59",
                        //   style: TextStyle(
                        //     color: Colors.green,
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Button(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          verifyOTP();
                        }
                      },
                      text: 'Verify OTP',
                      enabled: isButtonEnabled,
                      isLoading: otpResendProvider.isLoading,
                    ),
                    const SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        text: "Use Different Email? ",
                        children: [
                          TextSpan(
                            text: "New Email",
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.pop();
                              },
                          ),
                        ],
                      ),
                    )
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
