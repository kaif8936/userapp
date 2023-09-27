import '../popular_menu_tags_four_screen/widgets/chipview4_item_widget.dart';
import '../popular_menu_tags_four_screen/widgets/chipview_one4_item_widget.dart';
import '../popular_menu_tags_four_screen/widgets/chipview_two4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

class PopularMenuTagsFourScreen extends StatelessWidget {
  PopularMenuTagsFourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 76.h,
          leading: AppbarIconbutton1(
            svgPath: ImageConstant.imgHugeiconarrow,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 2.v,
            ),
          ),
          title: AppbarSubtitle1(
            text: "lbl_popular_menu".tr,
            margin: EdgeInsets.only(left: 37.h),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    svgPath: ImageConstant.imgSearchGray90001,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 54.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 24.h, 16.v),
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
              SizedBox(height: 27.v),
              Text(
                "lbl_type".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 14.v),
              Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children:
                    List<Widget>.generate(3, (index) => Chipview4ItemWidget()),
              ),
              SizedBox(height: 25.v),
              Text(
                "lbl_deliver_time".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 16.v),
              Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                    4, (index) => ChipviewOne4ItemWidget()),
              ),
              SizedBox(height: 25.v),
              Text(
                "lbl_food".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 16.v),
              Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                    5, (index) => ChipviewTwo4ItemWidget()),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 54.v,
          text: "lbl_search2".tr.toUpperCase(),
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 32.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL27,
        ),
      ),
    );
  }
}
