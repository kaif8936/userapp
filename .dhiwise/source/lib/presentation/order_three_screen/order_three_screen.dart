import '../order_three_screen/widgets/pizzapepperoni2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_title.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';
import 'package:mohd_kaif_s_application/widgets/custom_text_form_field.dart';

class OrderThreeScreen extends StatelessWidget {
  OrderThreeScreen({Key? key})
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
        resizeToAvoidBottomInset: false,
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
            text: "lbl_order_details".tr,
            margin: EdgeInsets.only(left: 24.h),
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
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgSearchGray90001,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 16.v,
                  ),
                  child: CustomImageView(
                    svgPath:
                        ImageConstant.imgHugeiconDeviceOutlineFilter01Gray90001,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
                borderDecoration: SearchViewStyleHelper.fillGray,
                fillColor: appTheme.gray50,
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
                    return Pizzapepperoni2ItemWidget();
                  },
                ),
              ),
              SizedBox(height: 32.v),
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.fillGray90002.copyWith(
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
                          style: CustomTextStyles.titleSmallGray90002Medium_1,
                        ),
                        Text(
                          "lbl_usd_44_88".tr,
                          style: CustomTextStyles.titleSmallGray90002Medium,
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      color: appTheme.gray90002.withOpacity(0.1),
                    ),
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
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.center,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray,
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
                          style: CustomTextStyles.titleSmallGray90002Medium_1,
                        ),
                        Text(
                          "lbl_usd_43_68".tr,
                          style: CustomTextStyles.titleSmallGray90002,
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
