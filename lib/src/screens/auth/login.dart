import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:provider/provider.dart';
import 'package:userapp/src/providers/login_provider.dart';
import 'package:userapp/src/utils/app_images.dart';
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
              padding: const EdgeInsets.all(24),
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
                        height: authProvider.isFocused ? 10.0 : 40.0,
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
                      height: authProvider.isFocused ? 10.0 : 30.0,
                    ),
                    const Text(
                      'Sign in your account',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(Iconsax.home_2),
                    const Icon(
                      Iconsax.shopping_bag,
                      color: Colors.amber,
                    ),
                    const SizedBox(height: 20),
                    Logo(Logos.google),
                    // const Icon(Logos.google)),
                    const Icon(Iconsax.security_user),
                    const Icon(OctIcons.git_branch_24),
                    const Icon(LineAwesome.user_cog_solid),
                    // const Icon(BoxIcons.shopp),
                    // const Icon(OctIcons.),
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
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 27),
                    Button(
                      onTap: () async {
                        if (authProvider.formKey.currentState!.validate()) {
                          await authProvider.login();
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
                    const SizedBox(height: 25),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xff0D5EF9),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text('Or continue with'),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Facebook button
                        // Google button
                      ],
                    ),
                    const SizedBox(height: 20),
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
