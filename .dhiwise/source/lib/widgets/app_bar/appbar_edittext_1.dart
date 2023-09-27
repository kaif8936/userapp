import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarEdittext1 extends StatelessWidget {
  AppbarEdittext1({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 265.h,
        controller: controller,
        hintText: "lbl_search".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgHugeiconDeviceOutlineFilter01,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 17.v),
        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
      ),
    );
  }
}
