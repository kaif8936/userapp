import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        appBar: CustomAppBar(
          leadingWidth: 76.h,
          leading: AppbarIconbutton2(
            svgPath: ImageConstant.imgHugeiconarrowWhiteA700,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_payment_method2".tr,
            margin: EdgeInsets.only(left: 26.h),
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
              Container(
                width: 301.h,
                margin: EdgeInsets.only(right: 25.h),
                child: Text(
                  "msg_a_payment_method".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 25.v,
                ),
                decoration: AppDecoration.outlinePrimary3.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLogospaypal,
                      height: 32.v,
                      width: 27.h,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40.h,
                        top: 7.v,
                        bottom: 8.v,
                      ),
                      child: Text(
                        "msg_example_example_com".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLogosmastercard,
                      height: 32.v,
                      width: 41.h,
                      margin: EdgeInsets.only(
                        top: 7.v,
                        bottom: 4.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "lbl_express_03_27".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl_add_card".tr.toUpperCase(),
                buttonStyle: CustomButtonStyles.fillPrimaryTL271,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_other_methods".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 18.v),
              Container(
                padding: EdgeInsets.all(20.h),
                decoration: AppDecoration.fillWhiteA700.copyWith(
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
                            style: theme.textTheme.titleSmall,
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_next".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 35.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL27,
        ),
      ),
    );
  }
}
