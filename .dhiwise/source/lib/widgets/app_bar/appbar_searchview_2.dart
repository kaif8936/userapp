import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview2 extends StatelessWidget {
  AppbarSearchview2({
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
        suffix: SizedBox(
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchGray90001,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        borderDecoration: SearchViewStyleHelper.custom,
        filled: false,
      ),
    );
  }
}
