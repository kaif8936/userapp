import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/widgets/back_button.dart';

class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90.w,
        toolbarHeight: 85.h,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.sp, top: 12.sp, bottom: 12.sp),
          child: const CustomBackButton(),
        ),
        title: Text(
          'Fill in all fields',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text("Log-in Successful"),
      ),
    );
  }
}
