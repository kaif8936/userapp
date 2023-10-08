import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:userapp/src/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final bool autofocus;
  final String? hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon;
  final Function(bool hasFocus) onFocusChange;
  final VoidCallback onTap;

  const CustomTextFormField({
    Key? key,
    required this.onTap,
    required this.onFocusChange,
    this.validator,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.autofocus = false,
    required this.hint,
    this.keyboardType,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print("Field Redbuid");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.txtPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          onTap: () {
            onFocusChange(true); // Notify that the TextFormField is focused
          },
          onEditingComplete: () {
            onFocusChange(false);
            FocusScope.of(context).requestFocus(FocusNode());
          },
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          autofocus: autofocus,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF2F2F2),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            isDense: true,
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                color: Colors.blue.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.sp),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.sp),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.sp),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(0.1),
                width: 1.0,
              ),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
