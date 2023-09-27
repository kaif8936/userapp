import '../resturant_page_five_screen/widgets/resturant_page_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_button.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_5.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';

class ResturantPageFiveScreen extends StatelessWidget {
  const ResturantPageFiveScreen({Key? key})
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
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            child: Text(
                              "msg_a_cheeseburger_is".tr,
                              maxLines: 16,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray500,
                            ),
                          ),
                          SizedBox(height: 74.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_testimonials".tr,
                                style: CustomTextStyles.titleMediumWhiteA700_3,
                              ),
                              Text(
                                "lbl_see_all".tr,
                                style: CustomTextStyles.bodyMediumPrimary_1,
                              ),
                            ],
                          ),
                          SizedBox(height: 27.v),
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: 24.v,
                              );
                            },
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return ResturantPageItemWidget();
                            },
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
