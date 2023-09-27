import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

class ResturantPageSevenScreen extends StatelessWidget {
  const ResturantPageSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 867.v,
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
                      padding: EdgeInsets.all(24.h),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
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
                                buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                                buttonTextStyle:
                                    CustomTextStyles.bodySmallWhiteA700_1,
                              ),
                              Spacer(),
                              CustomIconButton(
                                height: 34.adaptSize,
                                width: 34.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper
                                    .fillSecondaryContainer,
                                child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgHugeicondevicPrimary,
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
                          SizedBox(height: 25.v),
                          Text(
                            "lbl_cheese_burger".tr,
                            style: CustomTextStyles.titleMediumWhiteA700_3,
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
                                      IconButtonStyleHelper.fillWhiteATL171,
                                  child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgHugeiconinterWhiteA700,
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
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  margin: EdgeInsets.only(left: 26.h),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillWhiteATL171,
                                  child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgMdigasburnerWhiteA700,
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
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 34.adaptSize,
                                  width: 34.adaptSize,
                                  margin: EdgeInsets.only(left: 21.h),
                                  padding: EdgeInsets.all(9.h),
                                  decoration:
                                      IconButtonStyleHelper.fillWhiteATL171,
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgClockWhiteA700,
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
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.v),
                          SizedBox(
                            width: 324.h,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_a_cheeseburger_is2".tr,
                                    style: CustomTextStyles.bodyMediumGray500_1,
                                  ),
                                  TextSpan(
                                    text: "msg_lettuce_tomato".tr,
                                    style: CustomTextStyles.titleSmallGray500,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 82.v),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 70.v,
                              width: 252.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 7.h,
                                        bottom: 16.v,
                                      ),
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
                                  CustomElevatedButton(
                                    height: 70.v,
                                    width: 252.h,
                                    text: "lbl_add_to_cart2".tr.toUpperCase(),
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
                                    buttonStyle:
                                        CustomButtonStyles.outlinePrimary,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 8.v),
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
