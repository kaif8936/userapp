import '../order_seven_screen/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_title.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class OrderSevenScreen extends StatelessWidget {
  const OrderSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 75.h,
          leading: AppbarIconbutton3(
            svgPath: ImageConstant.imgHugeiconarrow,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_payment_method".tr,
            margin: EdgeInsets.only(left: 24.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.separated(
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
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Userprofile5ItemWidget();
                  },
                ),
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl_add_card".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillTeal,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_other_methods".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 18.v),
              Container(
                padding: EdgeInsets.all(20.h),
                decoration: AppDecoration.outlineSecondaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSimpleiconscashapp,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 4.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_cash_payment".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 8.v),
                          Text(
                            "lbl_default_method".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillGray90002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_basket_total".tr,
                          style: CustomTextStyles.titleSmallGray90002Medium_1,
                        ),
                        Text(
                          "lbl_aed_32_00".tr,
                          style: CustomTextStyles.titleSmallGray90002Medium,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray90002.withOpacity(0.1),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_discount".tr,
                          style: CustomTextStyles.titleSmallGray90002Medium_1,
                        ),
                        Text(
                          "lbl_aed_1_20".tr,
                          style: CustomTextStyles.titleSmallLightblueA700,
                        ),
                      ],
                    ),
                    SizedBox(height: 14.v),
                    Divider(
                      color: appTheme.gray90002.withOpacity(0.1),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_total".tr,
                          style: CustomTextStyles.titleSmallGray90002Medium_1,
                        ),
                        Text(
                          "lbl_aed_30_80".tr,
                          style: CustomTextStyles.titleSmallGray90002,
                        ),
                      ],
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 67.v,
          width: 206.h,
          text: "lbl_order_now".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 80.h,
            right: 89.h,
            bottom: 35.v,
          ),
          buttonStyle: CustomButtonStyles.outlinePrimary,
        ),
      ),
    );
  }
}
