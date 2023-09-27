import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

class V2Screen extends StatelessWidget {
  const V2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 200.h,
          padding: EdgeInsets.symmetric(horizontal: 43.h),
          child: CustomImageView(
            svgPath: ImageConstant.imgGroup29,
            height: 39.v,
            width: 112.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
