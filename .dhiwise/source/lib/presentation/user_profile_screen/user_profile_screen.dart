import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/presentation/order_history_one_page/order_history_one_page.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_two_page/popular_menu_two_page.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_longer_page/user_profile_longer_page.dart';
import 'package:mohd_kaif_s_application/widgets/custom_bottom_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_elevated_button.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 773.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNrdzmmanliy1d4unsplash,
                    height: 456.v,
                    width: 375.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 32.v,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomElevatedButton(
                            height: 24.v,
                            width: 95.h,
                            text: "lbl_member_gold".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL12,
                            buttonTextStyle:
                                CustomTextStyles.bodySmallWhiteA700_1,
                          ),
                          SizedBox(height: 25.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_muhammad_dominguez".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 10.v),
                                  Text(
                                    "msg_muhamed_dominguez_yahoo_com".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              Container(
                                height: 34.adaptSize,
                                width: 34.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: 34.adaptSize,
                                      width: 34.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgEdit,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 16.v,
                            ),
                            decoration: AppDecoration.outlineSecondaryContainer
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup21,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    top: 13.v,
                                    bottom: 19.v,
                                  ),
                                  child: Text(
                                    "msg_you_have_4_vouchers".tr,
                                    style: CustomTextStyles.titleSmallGray90002,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_favorite".tr,
                                style: CustomTextStyles.titleMediumGray90002,
                              ),
                              Text(
                                "lbl_see_all".tr,
                                style: CustomTextStyles.bodyMediumPrimary_1,
                              ),
                            ],
                          ),
                          SizedBox(height: 27.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.h,
                              vertical: 12.v,
                            ),
                            decoration: AppDecoration.outlineSecondaryContainer
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 58.adaptSize,
                                  width: 58.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgCheck,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                          top: 16.v,
                                          right: 13.h,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle10,
                                        height: 58.adaptSize,
                                        width: 58.adaptSize,
                                        radius: BorderRadius.circular(
                                          8.h,
                                        ),
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    top: 8.v,
                                    bottom: 8.v,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_pizza_pepperoni".tr,
                                        style: CustomTextStyles
                                            .titleSmallGray90002,
                                      ),
                                      SizedBox(height: 8.v),
                                      Text(
                                        "lbl_25_90".tr,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant
                                      .imgHugeiconhealthsolidheartPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 17.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 66.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Hugeiconsmartbluegray900:
        return AppRoutes.popularMenuTwoPage;
      case BottomBarEnum.Trashgray500:
        return AppRoutes.orderHistoryOnePage;
      case BottomBarEnum.Hugeiconuseroutlineuser:
        return AppRoutes.userProfileLongerPage;
      case BottomBarEnum.Signal:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.popularMenuTwoPage:
        return PopularMenuTwoPage();
      case AppRoutes.orderHistoryOnePage:
        return OrderHistoryOnePage();
      case AppRoutes.userProfileLongerPage:
        return UserProfileLongerPage();
      default:
        return DefaultWidget();
    }
  }
}
