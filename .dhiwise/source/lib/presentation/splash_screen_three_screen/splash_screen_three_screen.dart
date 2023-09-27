import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.gray90001,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.gray90001,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplashscreenone,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup30Primary,
                  height: 57.v,
                  width: 107.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
