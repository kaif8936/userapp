import 'package:flutter/material.dart';

class RegistrationSuccesful extends StatefulWidget {
  const RegistrationSuccesful({super.key});

  @override
  State<RegistrationSuccesful> createState() => _RegistrationSuccesfulState();
}

class _RegistrationSuccesfulState extends State<RegistrationSuccesful> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Registration Succesfull"),
      ),
    );
  }
}
