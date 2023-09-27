import '../popular_menu_six_screen/widgets/popular_menu1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/presentation/order_history_one_page/order_history_one_page.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_two_page/popular_menu_two_page.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_longer_page/user_profile_longer_page.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_bottom_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

class PopularMenuSixScreen extends StatelessWidget {
  PopularMenuSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(height: 22.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          svgPath:
                              ImageConstant.imgHugeiconDeviceOutlineFilter01,
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
              SizedBox(height: 24.v),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 289.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.h,
                    crossAxisSpacing: 15.h,
                  ),
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return PopularMenu1ItemWidget();
                  },
                ),
              ),
            ],
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
