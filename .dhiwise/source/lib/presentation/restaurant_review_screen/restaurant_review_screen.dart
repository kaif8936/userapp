import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_rating_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class RestaurantReviewScreen extends StatelessWidget {
  RestaurantReviewScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messagethreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: double.maxFinite,
          leading: AppbarIconbutton2(
            svgPath: ImageConstant.imgHugeiconarrowWhiteA700,
            margin: EdgeInsets.fromLTRB(24.h, 2.v, 299.h, 2.v),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 35.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 51.v),
              CustomImageView(
                svgPath: ImageConstant.imgCar,
                height: 83.v,
                width: 93.h,
              ),
              SizedBox(height: 25.v),
              Text(
                "msg_enjoy_your_meal".tr,
                style: CustomTextStyles.headlineSmallWhiteA700,
              ),
              Spacer(),
              Text(
                "msg_please_rate_the2".tr,
                style: CustomTextStyles.bodyMediumGray500,
              ),
              SizedBox(height: 18.v),
              CustomRatingBar(
                initialRating: 0,
              ),
              SizedBox(height: 24.v),
              CustomTextFormField(
                controller: messagethreeController,
                hintText: "msg_leave_feedback".tr,
                hintStyle: theme.textTheme.bodyLarge!,
                textInputAction: TextInputAction.done,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 67.v,
          width: 170.h,
          text: "lbl_submit".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 103.h,
            right: 103.h,
            bottom: 35.v,
          ),
          buttonStyle: CustomButtonStyles.outlinePrimary,
        ),
      ),
    );
  }
}
