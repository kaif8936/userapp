import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/core/app_export.dart';
import 'package:mohd_kaif_s_application/presentation/order_history_one_page/order_history_one_page.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_page/popular_menu_page.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_two_page/popular_menu_two_page.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_longer_page/user_profile_longer_page.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohd_kaif_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_bottom_bar.dart';
import 'package:mohd_kaif_s_application/widgets/custom_icon_button.dart';
import 'package:mohd_kaif_s_application/widgets/custom_search_view.dart';

class PopularMenuTabContainerScreen extends StatefulWidget {
  const PopularMenuTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PopularMenuTabContainerScreenState createState() =>
      PopularMenuTabContainerScreenState();
}

class PopularMenuTabContainerScreenState
    extends State<PopularMenuTabContainerScreen> with TickerProviderStateMixin {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

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
            margin: EdgeInsets.only(left: 24.h),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 22.v,
                    right: 24.h,
                  ),
                  child: Row(
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
                ),
              ),
              Container(
                height: 43.v,
                width: 266.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 22.v,
                ),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_europian".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_10m".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_burgers".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 489.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      PopularMenuPage(),
                      PopularMenuPage(),
                      PopularMenuPage(),
                    ],
                  ),
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
