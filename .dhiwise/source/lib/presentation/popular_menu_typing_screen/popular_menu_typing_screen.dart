import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class PopularMenuTypingScreen extends StatelessWidget {
  PopularMenuTypingScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 21.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          controller: searchController,
                          margin: EdgeInsets.only(right: 11.h),
                          hintText: "lbl_burger".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray90001,
                          textInputAction: TextInputAction.done,
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
                              svgPath: ImageConstant
                                  .imgHugeiconDeviceOutlineFilter01Gray90001,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          fillColor: appTheme.gray50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 24.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 288.v,
                                width: 156.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 139.v),
                                            Text(
                                              "lbl_cheese_burger".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 4.v,
                                                  right: 41.h,
                                                ),
                                                child: Text(
                                                  "lbl_steak_house".tr,
                                                  style:
                                                      theme.textTheme.bodySmall,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 9.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 4.v,
                                                    bottom: 2.v,
                                                  ),
                                                  child: Text(
                                                    "lbl".tr,
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Text(
                                                    "lbl_5_99".tr,
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 9.v),
                                            CustomElevatedButton(
                                              height: 48.v,
                                              width: 156.h,
                                              text: "lbl_add_to_cart".tr,
                                              leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 8.h),
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                ),
                                              ),
                                              buttonTextStyle: CustomTextStyles
                                                  .bodySmallWhiteA700_3,
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
                                        svgPath: ImageConstant
                                            .imgHugeiconhealthsolidheart,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 288.v,
                                width: 156.h,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        decoration: AppDecoration
                                            .outlineBlack9001e
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 139.v),
                                            Text(
                                              "lbl_chicken_burger".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            SizedBox(height: 4.v),
                                            Text(
                                              "lbl_grill_bar".tr,
                                              style: theme.textTheme.bodySmall,
                                            ),
                                            SizedBox(height: 9.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 4.v,
                                                    bottom: 2.v,
                                                  ),
                                                  child: Text(
                                                    "lbl".tr,
                                                    style: theme
                                                        .textTheme.labelMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Text(
                                                    "lbl_5_99".tr,
                                                    style: theme
                                                        .textTheme.titleMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 9.v),
                                            CustomElevatedButton(
                                              height: 48.v,
                                              width: 156.h,
                                              text: "lbl_add_to_cart".tr,
                                              leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 8.h),
                                                child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrash,
                                                ),
                                              ),
                                              buttonTextStyle: CustomTextStyles
                                                  .bodySmallWhiteA700_3,
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
                                              imagePath:
                                                  ImageConstant.imgUntitled21,
                                              height: 136.v,
                                              width: 150.h,
                                              alignment: Alignment.center,
                                            ),
                                            CustomIconButton(
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.only(
                                                top: 15.v,
                                                right: 2.h,
                                              ),
                                              padding: EdgeInsets.all(7.h),
                                              alignment: Alignment.topRight,
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgHugeiconhealthsolidheart,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 30.h,
                              top: 400.v,
                              right: 26.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_add_to_cart".tr,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.bodySmallWhiteA700_3,
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_add_to_cart".tr,
                                    textAlign: TextAlign.center,
                                    style:
                                        CustomTextStyles.bodySmallWhiteA700_3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
