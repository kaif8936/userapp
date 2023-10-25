// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/screens/auth/registration.dart';
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
      body: Padding(
        padding: EdgeInsets.all(24.h),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Generated OTP: ${widget.generatedOTP}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              CustomTextFormField(
                controller: otpController,
                label: 'Enter Otp Sent over Mail',
                hint: '5-Digit Otp',
                onFocusChange: (hasFocus) {},
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
              SizedBox(height: 20.h),
              Button(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    verifyOTP();
                  }
                },
                text: 'Verify OTP',
                enabled: isButtonEnabled,
                // isLoading: false, // You can set isLoading as needed
              ),
            ],
          ),
        ),
      ),
    );
  }
}
