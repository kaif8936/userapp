import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

class V1Screen extends StatelessWidget {
  const V1Screen({Key? key})
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
            svgPath: ImageConstant.imgLayer2,
            height: 58.v,
            width: 112.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
