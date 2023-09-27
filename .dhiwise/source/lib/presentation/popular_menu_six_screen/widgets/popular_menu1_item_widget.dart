import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PopularMenu1ItemWidget extends StatelessWidget {
  const PopularMenu1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 288.v,
      width: 156.h,
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
                          style: CustomTextStyles.labelMediumWhiteA700,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_5_99".tr,
                          style: CustomTextStyles.titleMediumWhiteA700_3,
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
                    buttonTextStyle: CustomTextStyles.bodySmallWhiteA700_3,
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
    );
  }
}
