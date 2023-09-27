import '../user_profile_longer_page/widgets/pizzapepperoni7_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class UserProfileLongerPage extends StatelessWidget {
  const UserProfileLongerPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 773.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNrdzmmanliy1d4unsplash,
                    height: 456.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 32.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                            height: 24.v,
                            width: 95.h,
                            text: "lbl_member_gold".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                            buttonTextStyle:
                                CustomTextStyles.bodySmallWhiteA700_1,
                          ),
                          SizedBox(height: 25.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_muhammad_dominguez".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "msg_muhamed_dominguez_yahoo_com".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              Container(
                                height: 34.adaptSize,
                                width: 34.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: 34.adaptSize,
                                      width: 34.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.outlineSecondaryContainer
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup21,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    top: 13.v,
                                    bottom: 19.v,
                                  ),
                                  child: Text(
                                    "msg_you_have_4_vouchers".tr,
                                    style: CustomTextStyles.titleSmallGray90002,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_favorite".tr,
                                style: CustomTextStyles.titleMediumGray90002,
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
                                height: 16.v,
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Pizzapepperoni7ItemWidget();
                            },
                          ),
                          SizedBox(height: 88.v),
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
