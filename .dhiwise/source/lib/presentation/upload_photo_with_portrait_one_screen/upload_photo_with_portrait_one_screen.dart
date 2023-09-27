import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class UploadPhotoWithPortraitOneScreen extends StatelessWidget {
  const UploadPhotoWithPortraitOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 76.h,
          leading: AppbarIconbutton1(
            svgPath: ImageConstant.imgHugeiconarrow,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "msg_set_your_location".tr,
            margin: EdgeInsets.only(left: 25.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              Container(
                width: 319.h,
                margin: EdgeInsets.only(right: 7.h),
                child: Text(
                  "msg_on_your_android".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(47.h, 40.v, 47.h, 5.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 71.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHugeicondevicPrimary,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_set_location".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_next".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 35.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL27,
        ),
      ),
    );
  }
}
