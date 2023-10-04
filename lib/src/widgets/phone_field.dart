// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import 'package:userapp/src/utils/app_colors.dart';

class CustomIntlPhoneField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(PhoneNumber?)? onPhoneNumberChanged;
  final String initialCountryCode;
  const CustomIntlPhoneField({
    Key? key,
    required this.label,
    required this.controller,
    this.validator,
    required this.onPhoneNumberChanged,
    required this.initialCountryCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("phone");
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
        IntlPhoneField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xffF2F2F2),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            isDense: true,
            hintText: label,
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
          ),
          initialCountryCode: initialCountryCode,
          onChanged: onPhoneNumberChanged,
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
