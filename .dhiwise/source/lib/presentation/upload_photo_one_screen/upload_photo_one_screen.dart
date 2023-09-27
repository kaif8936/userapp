import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class UploadPhotoOneScreen extends StatelessWidget {
  const UploadPhotoOneScreen({Key? key})
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
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "msg_upload_your_photo".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 322.h,
                child: Text(
                  "msg_uploading_a_photo".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 47.h,
                  top: 34.v,
                  right: 47.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 75.h,
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
                      svgPath: ImageConstant.imgPhotocamera,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_take_photo".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(47.h, 24.v, 47.h, 5.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 57.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHugeiconarrowssolidupload,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                    SizedBox(height: 24.v),
                    Text(
                      "msg_upload_your_file".tr,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                    SizedBox(height: 12.v),
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
