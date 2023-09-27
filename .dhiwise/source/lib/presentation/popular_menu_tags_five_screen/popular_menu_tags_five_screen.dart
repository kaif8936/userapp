import '../popular_menu_tags_five_screen/widgets/chipview14_item_widget.dart';
import '../popular_menu_tags_five_screen/widgets/chipview_one14_item_widget.dart';
import '../popular_menu_tags_five_screen/widgets/chipview_two14_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

class PopularMenuTagsFiveScreen extends StatelessWidget {
  PopularMenuTagsFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
            text: "lbl_popular_menu".tr,
            margin: EdgeInsets.only(left: 26.h),
          ),
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomSearchView(
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
                              svgPath: ImageConstant
                                  .imgHugeiconDeviceOutlineFilter01,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 54.v,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.all(16.h),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgNotification,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 41.v),
                  Text(
                    "lbl_type".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 16.v),
                  Wrap(
                    runSpacing: 10.v,
                    spacing: 10.h,
                    children: List<Widget>.generate(
                        3, (index) => Chipview14ItemWidget()),
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
                        4, (index) => ChipviewOne14ItemWidget()),
                  ),
                  SizedBox(height: 26.v),
                  Text(
                    "lbl_food".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 18.v),
                  Wrap(
                    runSpacing: 9.v,
                    spacing: 9.h,
                    children: List<Widget>.generate(
                        5, (index) => ChipviewTwo14ItemWidget()),
                  ),
                  SizedBox(height: 166.v),
                  Opacity(
                    opacity: 0.3,
                    child: CustomElevatedButton(
                      text: "lbl_search2".tr.toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_2,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        top: 41.v,
                        right: 25.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgTrash,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_add_to_cart".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallWhiteA700_3,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgTrash,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_add_to_cart".tr,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallWhiteA700_3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
