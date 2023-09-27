import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_edittext.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

class PopularMenuFourScreen extends StatelessWidget {
  PopularMenuFourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        appBar: CustomAppBar(
          title: AppbarEdittext(
            margin: EdgeInsets.only(left: 24.h),
            hintText: "lbl_burger".tr,
            controller: searchController,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgNotification,
              margin: EdgeInsets.fromLTRB(8.h, 1.v, 24.h, 1.v),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 288.v,
                width: 156.h,
                margin: EdgeInsets.only(bottom: 355.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: AppDecoration.outlineBlackE.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 137.v),
                            Text(
                              "lbl_cheese_burger".tr,
                              style: CustomTextStyles.titleMediumWhiteA700_3,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_steak_house".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 9.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 5.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "lbl".tr,
                                    style:
                                        CustomTextStyles.labelMediumWhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "lbl_5_99".tr,
                                    style:
                                        CustomTextStyles.titleMediumWhiteA700_3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 11.v),
                            CustomElevatedButton(
                              height: 48.v,
                              width: 156.h,
                              text: "lbl_add_to_cart".tr,
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 9.h),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                ),
                              ),
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallWhiteA700_3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUntitled11,
                      height: 136.v,
                      width: 140.h,
                      alignment: Alignment.topCenter,
                    ),
                    CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(
                        top: 15.v,
                        right: 5.h,
                      ),
                      padding: EdgeInsets.all(7.h),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgHugeiconhealthsolidheart,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 288.v,
                width: 156.h,
                margin: EdgeInsets.only(bottom: 355.v),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: AppDecoration.outlineBlackE.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 137.v),
                            Text(
                              "lbl_chicken_burger".tr,
                              style: CustomTextStyles.titleMediumWhiteA700_3,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "lbl_irish_pub".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            SizedBox(height: 9.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 3.v),
                                  child: Text(
                                    "lbl".tr,
                                    style:
                                        CustomTextStyles.labelMediumWhiteA700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "lbl_12_45".tr,
                                    style:
                                        CustomTextStyles.titleMediumWhiteA700_3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 11.v),
                            CustomElevatedButton(
                              height: 48.v,
                              width: 156.h,
                              text: "lbl_add_to_cart".tr,
                              leftIcon: Container(
                                margin: EdgeInsets.only(right: 9.h),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                ),
                              ),
                              buttonTextStyle:
                                  CustomTextStyles.bodySmallWhiteA700_3,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 136.v,
                        width: 150.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUntitled21,
                              height: 136.v,
                              width: 150.h,
                              alignment: Alignment.center,
                            ),
                            CustomIconButton(
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              margin: EdgeInsets.only(
                                top: 15.v,
                                right: 5.h,
                              ),
                              padding: EdgeInsets.all(7.h),
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgHugeiconhealthsolidheart,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
