import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_outlined_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailplaceholdeController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController flatcoloriconsgController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                SizedBox(height: 65.v),
                Text(
                  "msg_sign_up_your_account".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 23.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_email".tr,
                        style: CustomTextStyles.titleSmallGray90001_1,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomTextFormField(
                      controller: emailplaceholdeController,
                      hintText: "lbl_placeholder".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                    ),
                  ],
                ),
                SizedBox(height: 25.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_password".tr,
                        style: CustomTextStyles.titleSmallGray90001_1,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl2".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 18.v, 24.h, 18.v),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgHugeiconInterfaceSolidEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 24.h,
                        top: 17.v,
                        bottom: 17.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "msg_repeat_password".tr,
                        style: CustomTextStyles.titleSmallGray90001_1,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    CustomTextFormField(
                      controller: passwordController1,
                      hintText: "lbl2".tr,
                      hintStyle: theme.textTheme.bodyLarge!,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 18.v, 24.h, 18.v),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgHugeiconInterfaceSolidEye,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 24.h,
                        top: 17.v,
                        bottom: 17.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.v),
                Opacity(
                  opacity: 0.3,
                  child: CustomElevatedButton(
                    height: 54.v,
                    text: "lbl_next".tr.toUpperCase(),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_2,
                  ),
                ),
                SizedBox(height: 32.v),
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
                      ),
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        controller: flatcoloriconsgController,
                        margin: EdgeInsets.only(left: 8.h),
                        hintText: "lbl_google".tr,
                        hintStyle: CustomTextStyles.titleSmallGray90001_1,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(24.h, 16.v, 12.h, 16.v),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgFlatcoloriconsgoogle,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 51.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 17.v,
                          right: 30.h,
                          bottom: 17.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineGrayTL16,
                        filled: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_already_have_an2".tr,
                        style: theme.textTheme.bodyMedium,
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
