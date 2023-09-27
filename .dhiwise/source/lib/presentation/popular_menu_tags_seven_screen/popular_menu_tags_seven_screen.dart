import '../popular_menu_tags_seven_screen/widgets/chipview12_item_widget.dart';
import '../popular_menu_tags_seven_screen/widgets/chipview_one12_item_widget.dart';
import '../popular_menu_tags_seven_screen/widgets/chipview_two12_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

class PopularMenuTagsSevenScreen extends StatelessWidget {
  PopularMenuTagsSevenScreen({Key? key})
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
            margin: EdgeInsets.only(left: 39.h),
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
              SizedBox(height: 25.v),
              Text(
                "lbl_type".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 16.v),
              Wrap(
                runSpacing: 10.v,
                spacing: 10.h,
                children:
                    List<Widget>.generate(3, (index) => Chipview12ItemWidget()),
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_deliver_time".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 18.v),
              Wrap(
                runSpacing: 15.v,
                spacing: 15.h,
                children: List<Widget>.generate(
                    4, (index) => ChipviewOne12ItemWidget()),
              ),
              SizedBox(height: 26.v),
              Text(
                "lbl_food".tr,
                style: CustomTextStyles.titleSmallGray90001_1,
              ),
              SizedBox(height: 18.v),
              Wrap(
                runSpacing: 9.v,
                spacing: 9.h,
                children: List<Widget>.generate(
                    5, (index) => ChipviewTwo12ItemWidget()),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_search2".tr.toUpperCase(),
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
