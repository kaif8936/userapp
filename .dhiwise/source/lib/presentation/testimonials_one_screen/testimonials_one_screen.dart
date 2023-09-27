import '../testimonials_one_screen/widgets/userprofilerow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class TestimonialsOneScreen extends StatelessWidget {
  const TestimonialsOneScreen({Key? key})
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
            text: "lbl_testimonials".tr,
            margin: EdgeInsets.only(left: 23.h),
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
              return UserprofilerowItemWidget();
            },
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 70.v,
          width: 184.h,
          text: "lbl_back".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 96.h,
            right: 95.h,
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
          buttonStyle: CustomButtonStyles.fillPrimaryTL16,
          buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
        ),
      ),
    );
  }
}
