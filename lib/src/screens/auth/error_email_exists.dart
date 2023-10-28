import 'package:flutter/material.dart';

class ErrorEmailExists extends StatelessWidget {
  const ErrorEmailExists({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Email lready exists")),
    );
  }
}
