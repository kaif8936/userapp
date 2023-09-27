import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_outlined_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class SignUpPageTwoScreen extends StatelessWidget {
  SignUpPageTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailplaceholdeController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 40.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGroup30Primary,
                  height: 57.v,
                  width: 108.h,
                ),
                SizedBox(height: 63.v),
                Text(
                  "msg_sign_up_your_account".tr,
                  style: CustomTextStyles.titleMediumWhiteA70018,
                ),
                SizedBox(height: 24.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_email".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    CustomTextFormField(
                      controller: emailplaceholdeController,
                      hintText: "lbl_placeholder".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineGrayTL12,
                    ),
                  ],
                ),
                SizedBox(height: 29.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_password".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl2".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 21.v, 24.h, 12.v),
                        child: CustomImageView(
                          svgPath:
                              ImageConstant.imgHugeiconInterfaceSolidEyeGray500,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 51.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 24.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineGrayTL12,
                    ),
                  ],
                ),
                SizedBox(height: 30.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "msg_repeat_password".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomTextFormField(
                      controller: passwordController1,
                      hintText: "lbl2".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 21.v, 24.h, 12.v),
                        child: CustomImageView(
                          svgPath:
                              ImageConstant.imgHugeiconInterfaceSolidEyeGray500,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 51.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 24.h,
                        top: 16.v,
                        bottom: 16.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineGrayTL12,
                    ),
                  ],
                ),
                SizedBox(height: 30.v),
                Opacity(
                  opacity: 0.3,
                  child: CustomElevatedButton(
                    text: "lbl_next".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_2,
                  ),
                ),
                SizedBox(height: 35.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomOutlinedButton(
                        text: "lbl_facebook".tr,
                        margin: EdgeInsets.only(right: 8.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgLogosfacebook,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.outlineWhiteA,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                    ),
                    Expanded(
                      child: CustomOutlinedButton(
                        text: "lbl_google".tr,
                        margin: EdgeInsets.only(left: 8.h),
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgFlatcoloriconsgoogle,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.outlineWhiteA,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: CustomTextStyles.bodyMediumWhiteA700_1,
                      ),
                      TextSpan(
                        text: "lbl_sign_in2".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
