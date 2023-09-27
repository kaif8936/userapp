import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/widgets/back_button.dart';

class RegistrationSuccessfull extends StatelessWidget {
  const RegistrationSuccessfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90.w,
        toolbarHeight: 85.h,
        // backgroundColor: Colors.amber,
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
        child: Text("Sig-Up Successful"),
      ),
    );
  }
}
