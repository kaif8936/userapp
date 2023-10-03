import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/utils/app_colors.dart';

enum ButtonType { primary, secondary }

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final bool enabled;
  final ButtonType buttonType;
  final bool isLoading;

  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.enabled = true,
    this.buttonType = ButtonType.primary,
    this.isLoading = false, // Add isLoading property
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.4,
      child: isLoading
          ? loading()
          : switch (buttonType) {
              ButtonType.primary => primary(),
              ButtonType.secondary => secondary(),
            },
    );
  }

  Widget loading() {
    return Container(
      // height: 51.h,
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
          onTap: () {}, // Do nothing when loading
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            color: AppColors.transparent,
            child: const Center(
              child: CircularProgressIndicator(
                // strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget primary() {
    return Container(
      // height: 51.h,
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
            if (enabled && !isLoading) onTap();
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
      // height: 51.h,
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
            if (enabled && !isLoading) onTap();
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
