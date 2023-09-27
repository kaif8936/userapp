import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({
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
      child: CustomSearchView(
        width: 265.h,
        controller: controller,
        hintText: "lbl_search".tr,
        prefix: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchGray90001,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgHugeiconDeviceOutlineFilter01Gray90001,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        borderDecoration: SearchViewStyleHelper.fillGray,
        fillColor: appTheme.gray50,
      ),
    );
  }
}
