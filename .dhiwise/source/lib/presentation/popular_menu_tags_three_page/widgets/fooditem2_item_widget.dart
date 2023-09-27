import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Fooditem2ItemWidget extends StatelessWidget {
  const Fooditem2ItemWidget({Key? key})
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
              decoration: AppDecoration.outlineBlack9001e.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 139.v),
                  Text(
                    "lbl_cheese_burger".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_cheesy_hettaven".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgCheese1,
                        height: 11.adaptSize,
                        width: 11.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          bottom: 3.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_5_99".tr,
                          style: theme.textTheme.titleMedium,
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
                      margin: EdgeInsets.only(right: 8.h),
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
