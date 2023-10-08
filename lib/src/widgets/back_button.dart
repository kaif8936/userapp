import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // If onTap is not provided, pop the screen by default
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: EdgeInsets.all(0.sp),
        child: Container(
          // height: 52.h,
          // width: 520.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15.sp), // Adjust the radius as needed
            boxShadow: const [
              BoxShadow(
                color: Color(0x1a0D5EF9),
                spreadRadius: -4,
                blurRadius: 15,
                offset: Offset(0, 10), // Change the shadow offset as needed
              ),
            ],
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
