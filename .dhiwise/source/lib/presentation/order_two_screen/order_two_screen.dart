import '../order_two_screen/widgets/pizzapepperoni3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class OrderTwoScreen extends StatelessWidget {
  OrderTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController discountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        resizeToAvoidBottomInset: false,
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
            text: "lbl_order_details".tr,
            margin: EdgeInsets.only(left: 23.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "lbl_search".tr,
                prefix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 16.v,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearch,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgHugeiconDeviceOutlineFilter01,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
              ),
              SizedBox(height: 24.v),
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
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Pizzapepperoni3ItemWidget();
                  },
                ),
              ),
              SizedBox(height: 32.v),
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillWhiteA7001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_basket_total".tr,
                          style: CustomTextStyles.titleSmallWhiteA700,
                        ),
                        Text(
                          "lbl_usd_44_88".tr,
                          style: CustomTextStyles.titleSmallMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Divider(),
                    SizedBox(height: 12.v),
                    SizedBox(
                      height: 30.v,
                      width: 295.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomTextFormField(
                            width: 295.h,
                            controller: discountController,
                            hintText: "lbl_discount".tr,
                            hintStyle: CustomTextStyles.titleSmallWhiteA700,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineWhiteA,
                            filled: false,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "lbl_usd_1_20".tr,
                              style: CustomTextStyles.titleSmallPrimaryMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_total".tr,
                          style: CustomTextStyles.titleSmallWhiteA700,
                        ),
                        Text(
                          "lbl_usd_43_68".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 70.v,
          width: 261.h,
          text: "lbl_place_my_order".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 57.h,
            right: 57.h,
            bottom: 32.v,
          ),
          buttonStyle: CustomButtonStyles.outlinePrimary,
        ),
      ),
    );
  }
}
