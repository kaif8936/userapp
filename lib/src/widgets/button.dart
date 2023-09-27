import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/utils/app_colors.dart';

enum ButtonType { primary, secondary }

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool enabled;
  final ButtonType buttonType;

  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.enabled = true,
    this.buttonType = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.4,
      child: switch (buttonType) {
        ButtonType.primary => primary(),
        ButtonType.secondary => secondary(),
      },
    );
  }

  Widget primary() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(57.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.btnShadow,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Material(
        color: const Color(0xff0D5EF9),
        borderRadius: BorderRadius.circular(57.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(57.r),
          splashColor: AppColors.btnRipple,
          onTap: () {
            if (enabled) onTap();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
            color: AppColors.transparent,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget secondary() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(57.r),
        border: Border.all(
          color: AppColors.green18,
          width: 1.w,
        ),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(57.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(57.r),
          splashColor: AppColors.btnRipple,
          onTap: () {
            if (enabled) onTap();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            color: AppColors.transparent,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
