import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

class ResturantPageSixScreen extends StatelessWidget {
  const ResturantPageSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: IntrinsicWidth(
                      child: SizedBox(
                        height: 620.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMcdonaldsrestaurant,
                              height: 344.v,
                              width: 375.h,
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 26.v),
                                padding: EdgeInsets.all(24.h),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder32,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CustomElevatedButton(
                                          height: 24.v,
                                          width: 65.h,
                                          text: "lbl_popular".tr,
                                          margin: EdgeInsets.only(top: 8.v),
                                          buttonStyle: CustomButtonStyles
                                              .fillPrimaryTL12,
                                          buttonTextStyle: CustomTextStyles
                                              .bodySmallWhiteA700_1,
                                        ),
                                        Spacer(),
                                        CustomIconButton(
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration: IconButtonStyleHelper
                                              .fillSecondaryContainer,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgHugeicondevicPrimary,
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                          margin: EdgeInsets.only(left: 10.h),
                                          padding: EdgeInsets.all(9.h),
                                          decoration: IconButtonStyleHelper
                                              .fillSecondaryContainer,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgHugeiconhealthsolidheartPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 23.v),
                                    Text(
                                      "lbl_mcdonald_s3".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 15.v),
                                    Row(
                                      children: [
                                        CustomIconButton(
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration: IconButtonStyleHelper
                                              .fillGrayTL17,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgHugeicondevicGray90001,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 12.h,
                                            top: 7.v,
                                            bottom: 9.v,
                                          ),
                                          child: Text(
                                            "lbl_3_km".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                          margin: EdgeInsets.only(left: 24.h),
                                          padding: EdgeInsets.all(9.h),
                                          decoration: IconButtonStyleHelper
                                              .fillGrayTL17,
                                          child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgHugeiconinterGray90001,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 12.h,
                                            top: 8.v,
                                            bottom: 8.v,
                                          ),
                                          child: Text(
                                            "lbl_4_8_rating".tr,
                                            style: theme.textTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 316.h,
                                      margin: EdgeInsets.only(
                                        top: 10.v,
                                        right: 10.h,
                                      ),
                                      child: Text(
                                        "msg_mcdonald_s_is_the".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    SizedBox(height: 17.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "msg_popular_this_week".tr,
                                          style: CustomTextStyles
                                              .titleMediumGray90002,
                                        ),
                                        Text(
                                          "lbl_see_all".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary_1,
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 17.v),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 24.h,
                                  top: 332.v,
                                  right: 151.h,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9001e.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 158.v),
                                        child: Column(
                                          children: [
                                            Text(
                                              "lbl_cheese_burger".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 52.h,
                                                  top: 6.v,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "lbl_cheesy_heaven".tr,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheese1,
                                                      height: 11.adaptSize,
                                                      width: 11.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 4.h,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                    Text(
                                                      "lbl_popeyes_what".tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: theme
                                                          .textTheme.bodySmall,
                                                    ),
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheese1,
                                                      height: 11.adaptSize,
                                                      width: 11.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 4.h,
                                                        bottom: 2.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 5.v,
                                                    bottom: 1.v,
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
                                            SizedBox(height: 14.v),
                                            CustomElevatedButton(
                                              height: 48.v,
                                              text: "lbl_add_to_cart".tr,
                                              leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 9.h),
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
                                    Container(
                                      height: 288.v,
                                      width: 200.h,
                                      margin: EdgeInsets.only(left: 24.h),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 288.v,
                                              width: 200.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  16.h,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: appTheme.black9001e,
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(
                                                      0,
                                                      16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: 48.v,
                                            width: 200.h,
                                            text: "lbl_add_to_cart".tr,
                                            leftIcon: Container(
                                              margin:
                                                  EdgeInsets.only(right: 9.h),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgTrash,
                                              ),
                                            ),
                                            buttonStyle: CustomButtonStyles
                                                .outlineBlueGray,
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallWhiteA700_3,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 62.v),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 94.v),
                                    Text(
                                      "msg_chicken_sandwich".tr,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 31.v,
                                        right: 6.h,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 5.v,
                                              bottom: 1.v,
                                            ),
                                            child: Text(
                                              "lbl".tr,
                                              style:
                                                  theme.textTheme.labelMedium,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.h),
                                            child: Text(
                                              "lbl_3_59".tr,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUntitled11,
                              height: 166.v,
                              width: 172.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 38.h,
                                bottom: 139.v,
                              ),
                            ),
                            CustomIconButton(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              margin: EdgeInsets.only(bottom: 244.v),
                              padding: EdgeInsets.all(8.h),
                              alignment: Alignment.bottomCenter,
                              child: CustomImageView(
                                svgPath:
                                    ImageConstant.imgHugeiconhealthsolidheart,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUntitled21,
                              height: 157.v,
                              width: 172.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 139.v),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 23.v,
                      right: 24.h,
                    ),
                    child: Row(
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
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 48.h,
            right: 48.h,
            bottom: 53.v,
          ),
          decoration: AppDecoration.outlineSecondaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Container(
            decoration: AppDecoration.outlineSecondaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse662,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 25.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Text(
                                "lbl_ricky_martin".tr,
                                style: CustomTextStyles.titleSmallGray90002,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgHugeiconinterPrimary,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(
                                left: 97.h,
                                top: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_5".tr,
                                style: CustomTextStyles.titleMediumPrimary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "lbl_20_11_2023".tr,
                          style: CustomTextStyles.bodySmallGray90001_1,
                        ),
                        Container(
                          width: 178.h,
                          margin: EdgeInsets.only(
                            top: 8.v,
                            right: 26.h,
                          ),
                          child: Text(
                            "msg_the_food_is_very".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallGray90001_1,
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
    );
  }
}
