import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Iconss extends StatelessWidget {
  const Iconss({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Icon(OctIcons.git_branch_24),
        ],
      ),
    );
  }
}
