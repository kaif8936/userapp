import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:userapp/src/providers/login_provider.dart';
import 'package:userapp/src/utils/app_images.dart';
import 'package:userapp/src/utils/routes.dart';
import 'package:userapp/src/widgets/button.dart';
import 'package:userapp/src/widgets/custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("object");
    // final authProvider = Provider.of<LoginProvider>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Consumer<LoginProvider>(
          builder: (context, authProvider, child) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
              child: Form(
                key: authProvider.formKey,
                onChanged: authProvider.validateForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context)
                            .requestFocus(authProvider.imageFocusNode);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: authProvider.isFocused ? 10.0 : 25.0,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: authProvider.isFocused ? 100.0 : 127.0,
                      height: authProvider.isFocused ? 100.0 : 127.0,
                      child: Image.asset(
                        AppImages.splashLogo,
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: authProvider.isFocused ? 10.0 : 25.0,
                    ),
                    const Text(
                      'Sign in your account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFormField(
                      controller: authProvider.emailController,
                      label: 'Email',
                      hint: 'Placeholder',
                      onFocusChange: (hasFocus) {
                        authProvider.isFocused = hasFocus;
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
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      controller: authProvider.passwordController,
                      obscureText: !authProvider.obscureText,
                      label: 'Password',
                      hint: '**********',
                      suffixIcon: IconButton(
                        onPressed: authProvider.toggleObscureText,
                        icon: Icon(
                          authProvider.obscureText
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
                        authProvider.isFocused = hasFocus;
                      },
                      onTap: () {},
                    ),
                    SizedBox(height: 27.h),
                    Button(
                      onTap: () async {
                        if (authProvider.formKey.currentState!.validate()) {
                          await authProvider.loginWithEmail(
                            authProvider
                                .emailController.text, // Use the provided email
                            authProvider.passwordController.text,
                            context,
                          );
                          if (authProvider.isLoading) {
                            // Show loading indicator
                          } else {
                            // Navigate to a new screen
                          }
                        }
                      },
                      text: 'SIGN IN',
                      enabled: authProvider.isButtonEnabled,
                      isLoading: authProvider.isLoading,
                    ),
                    SizedBox(height: 20.h),
                    TextButton(
                      onPressed: () {
                        context.push(Routes.registration);
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xff0D5EF9),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            height: 1,
                            // width: 10,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: const Text('Or continue with'),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            height: 1,
                            // width: 10,
                          ),
                        ),
                      ],
                    ),
                    // const Text('Or continue with'),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container(
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(16.sp),
                        //     border: Border.all(
                        //       color: Colors.black.withOpacity(0.1),
                        //       width: 2.0,
                        //     ),
                        //   ),
                        //   child: InkWell(
                        //     onTap: () {
                        //       // Add Facebook login logic here
                        //     },
                        //     child: Padding(
                        //       padding: EdgeInsets.symmetric(
                        //           vertical: 13.h, horizontal: 22.w),
                        //       child: Row(
                        //         children: [
                        //           const Icon(Icons.facebook,
                        //               color: Colors.black),
                        //           SizedBox(width: 8.w),
                        //           Text(
                        //             'Facebook',
                        //             style: TextStyle(
                        //               color: Colors.black,
                        //               fontSize: 14.sp,
                        //               fontWeight: FontWeight.bold,
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.sp),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.1),
                              width: 2.0,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              context.push(Routes.loginNumber);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 13.h, horizontal: 22.w),
                              child: Row(
                                children: [
                                  const Icon(Icons.phone, color: Colors.black),
                                  SizedBox(width: 8.w),
                                  Text(
                                    'Phone',
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
                    
                    SizedBox(height: 20.h),
                    Text.rich(
                      TextSpan(
                        text: "Don't have an account? ",
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: const TextStyle(
                              color: Colors.blue,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to the registration screen
                                context.pushReplacement(
                                    Routes.emailRegistrationPage);
                              },
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
