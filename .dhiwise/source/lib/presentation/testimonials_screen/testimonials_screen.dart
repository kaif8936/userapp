import '../testimonials_screen/widgets/testimonials_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_title.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class TestimonialsScreen extends StatelessWidget {
  const TestimonialsScreen({Key? key})
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
            text: "lbl_testimonials".tr,
            margin: EdgeInsets.only(left: 24.h),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 28.v,
            right: 24.h,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return TestimonialsItemWidget();
            },
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 70.v,
          width: 184.h,
          text: "lbl_back".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 95.h,
            right: 96.h,
            bottom: 32.v,
          ),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                11.h,
              ),
            ),
            child: CustomImageView(
              svgPath:
                  ImageConstant.imgHugeiconArrowsBulkDirectionleft01Primary,
            ),
          ),
          buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
        ),
      ),
    );
  }
}
