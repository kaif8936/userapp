import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_button.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_5.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

class ResturantPageScreen extends StatelessWidget {
  const ResturantPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 58.v,
          title: AppbarButton(
            margin: EdgeInsets.only(left: 24.h),
          ),
          actions: [
            AppbarIconbutton5(
              svgPath: ImageConstant.imgHugeicondevicPrimary,
              margin: EdgeInsets.only(left: 24.h),
            ),
            AppbarIconbutton5(
              svgPath: ImageConstant.imgHugeiconhealthsolidheartPrimary,
              margin: EdgeInsets.only(
                left: 10.h,
                right: 24.h,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 933.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMcdonaldsrestaurant,
                    height: 344.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 24.h,
                        right: 24.h,
                        bottom: 32.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_cheese_burger".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 13.v,
                              right: 14.h,
                            ),
                            child: Row(
                              children: [
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillGrayTL17,
                                  child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgHugeiconinterGray90001,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 8.v,
                                    bottom: 8.v,
                                  ),
                                  child: Text(
                                    "lbl_4_9".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  margin: EdgeInsets.only(left: 26.h),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillGrayTL17,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgMdigasburner,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 7.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "lbl_124_kcal".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  margin: EdgeInsets.only(left: 21.h),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillGrayTL17,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgClock,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.h,
                                    top: 7.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "lbl_7_10_min".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.v),
                          SizedBox(
                            width: 324.h,
                            child: Text(
                              "msg_a_cheeseburger_is".tr,
                              maxLines: 16,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 74.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_testimonials".tr,
                                style: CustomTextStyles.titleMediumGray90002,
                              ),
                              Text(
                                "lbl_see_all".tr,
                                style: CustomTextStyles.bodyMediumPrimary_1,
                              ),
                            ],
                          ),
                          SizedBox(height: 24.v),
                          SizedBox(
                            height: 113.v,
                            width: 327.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 45.h),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgTrash,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 9.h),
                                          child: Text(
                                            "lbl_add_to_cart".tr,
                                            style: CustomTextStyles
                                                .bodySmallWhiteA700_3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 2.v),
                                    padding:
                                        EdgeInsets.symmetric(vertical: 13.v),
                                    decoration: AppDecoration
                                        .outlineSecondaryContainer
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse662,
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          radius: BorderRadius.circular(
                                            25.h,
                                          ),
                                          margin: EdgeInsets.only(
                                            top: 2.v,
                                            bottom: 31.v,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5.v),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.v),
                                                    child: Text(
                                                      "lbl_ricky_martin".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallGray90002,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgHugeiconinterPrimary,
                                                    height: 14.adaptSize,
                                                    width: 14.adaptSize,
                                                    margin: EdgeInsets.only(
                                                      left: 97.h,
                                                      top: 2.v,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h),
                                                    child: Text(
                                                      "lbl_5".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 4.v),
                                              Text(
                                                "lbl_20_11_2023".tr,
                                                style: CustomTextStyles
                                                    .bodySmallGray90001_1,
                                              ),
                                              SizedBox(height: 8.v),
                                              SizedBox(
                                                width: 178.h,
                                                child: Text(
                                                  "msg_the_food_is_very".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodySmallGray90001_1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 13.v),
                            decoration: AppDecoration.outlineSecondaryContainer
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse665,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  radius: BorderRadius.circular(
                                    25.h,
                                  ),
                                  margin: EdgeInsets.only(
                                    top: 2.v,
                                    bottom: 31.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 3.v),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text(
                                              "lbl_woody_mccoy".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray90002,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgHugeiconinterPrimary,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 89.h,
                                              top: 2.v,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text(
                                              "lbl_5".tr,
                                              style: CustomTextStyles
                                                  .titleMediumPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.v),
                                      Text(
                                        "lbl_10_05_2023".tr,
                                        style: CustomTextStyles
                                            .bodySmallGray90001_1,
                                      ),
                                      SizedBox(height: 8.v),
                                      SizedBox(
                                        width: 202.h,
                                        child: Text(
                                          "msg_everything_is_simply".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallGray90001_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            height: 70.v,
                            text: "lbl_add_to_cart2".tr.toUpperCase(),
                            margin: EdgeInsets.only(
                              left: 34.h,
                              top: 30.v,
                              right: 41.h,
                            ),
                            rightIcon: Container(
                              margin: EdgeInsets.only(left: 12.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  11.h,
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgFolder,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            alignment: Alignment.center,
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
      ),
    );
  }
}
