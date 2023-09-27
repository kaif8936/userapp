import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';

// ignore: must_be_immutable
class TestimonialsItemWidget extends StatelessWidget {
  const TestimonialsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13.v),
      decoration: AppDecoration.outlineSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              bottom: 31.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
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
                SizedBox(height: 8.v),
                Text(
                  "msg_the_food_is_very".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray90001_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
