import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PopularMenuFivePage extends StatefulWidget {
  const PopularMenuFivePage({Key? key})
      : super(
          key: key,
        );

  @override
  PopularMenuFivePageState createState() => PopularMenuFivePageState();
}

class PopularMenuFivePageState extends State<PopularMenuFivePage>
    with AutomaticKeepAliveClientMixin<PopularMenuFivePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 27.v,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      Row(
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
                                    decoration:
                                        AppDecoration.outlineBlackE.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 137.v),
                                        Text(
                                          "lbl_cheese_burger".tr,
                                          style: CustomTextStyles
                                              .titleMediumWhiteA700_3,
                                        ),
                                        SizedBox(height: 4.v),
                                        Text(
                                          "lbl_steak_house".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        SizedBox(height: 9.v),
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
                                                style: CustomTextStyles
                                                    .labelMediumWhiteA700,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 2.h),
                                              child: Text(
                                                "lbl_5_99".tr,
                                                style: CustomTextStyles
                                                    .titleMediumWhiteA700_3,
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
                                    decoration:
                                        AppDecoration.outlineBlackE.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 135.v),
                                        Text(
                                          "lbl_pizza".tr,
                                          style: CustomTextStyles
                                              .titleMediumWhiteA700_3,
                                        ),
                                        SizedBox(height: 6.v),
                                        Text(
                                          "lbl_grill_bar".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 9.v,
                                              right: 46.h,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 3.v),
                                                  child: Text(
                                                    "lbl".tr,
                                                    style: CustomTextStyles
                                                        .labelMediumWhiteA700,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 2.h),
                                                  child: Text(
                                                    "lbl_12_45".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumWhiteA700_3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
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
                                          buttonTextStyle: CustomTextStyles
                                              .bodySmallWhiteA700_3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUntitled12,
                                  height: 136.adaptSize,
                                  width: 136.adaptSize,
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
                        ],
                      ),
                      SizedBox(height: 32.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 302.v,
                            width: 156.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.whiteA700.withOpacity(0.1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Container(
                                      height: 278.v,
                                      width: 156.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 43.v),
                                      decoration:
                                          AppDecoration.outlineBlackE.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 22.h,
                                                right: 22.h,
                                                bottom: 31.v,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "lbl_chicken_burger".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumWhiteA700_3,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 4.v,
                                                        right: 28.h,
                                                      ),
                                                      child: Text(
                                                        "lbl_irish_pub".tr,
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 7.v),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 5.v,
                                                          bottom: 1.v,
                                                        ),
                                                        child: Text(
                                                          "lbl".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2.h),
                                                        child: Text(
                                                          "lbl_5_99".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleMedium,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: 48.v,
                                            width: 156.h,
                                            text: "lbl_add_to_cart".tr,
                                            leftIcon: Container(
                                              margin:
                                                  EdgeInsets.only(right: 9.h),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgTrash,
                                              ),
                                            ),
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallWhiteA700_3,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                        ],
                                      ),
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
                          SizedBox(
                            height: 302.v,
                            width: 156.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.whiteA700.withOpacity(0.1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: Container(
                                      height: 278.v,
                                      width: 156.h,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 43.v),
                                      decoration:
                                          AppDecoration.outlineBlackE.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 34.h,
                                                right: 29.h,
                                                bottom: 32.v,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "lbl_caesar_salad".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumWhiteA700_3,
                                                  ),
                                                  SizedBox(height: 6.v),
                                                  Text(
                                                    "lbl_zala_resturant".tr,
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                  SizedBox(height: 7.v),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: 5.v,
                                                          bottom: 1.v,
                                                        ),
                                                        child: Text(
                                                          "lbl".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2.h),
                                                        child: Text(
                                                          "lbl_5_99".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleMedium,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          CustomElevatedButton(
                                            height: 48.v,
                                            width: 156.h,
                                            text: "lbl_add_to_cart".tr,
                                            leftIcon: Container(
                                              margin:
                                                  EdgeInsets.only(right: 9.h),
                                              child: CustomImageView(
                                                svgPath: ImageConstant.imgTrash,
                                              ),
                                            ),
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallWhiteA700_3,
                                            alignment: Alignment.bottomCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    height: 136.v,
                                    width: 151.h,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCesarsalad1,
                                          height: 136.v,
                                          width: 151.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 15.v,
                                            right: 3.h,
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
                    ],
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
