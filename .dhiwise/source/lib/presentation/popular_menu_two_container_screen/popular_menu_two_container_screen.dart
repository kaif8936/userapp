import 'package:flutter/material.dart';import 'package:mohd_kaif_s_application/core/app_export.dart';import 'package:mohd_kaif_s_application/presentation/order_history_one_page/order_history_one_page.dart';import 'package:mohd_kaif_s_application/presentation/popular_menu_two_page/popular_menu_two_page.dart';import 'package:mohd_kaif_s_application/presentation/user_profile_longer_page/user_profile_longer_page.dart';import 'package:mohd_kaif_s_application/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class PopularMenuTwoContainerScreen extends StatelessWidget {PopularMenuTwoContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.popularMenuTwoPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Hugeiconsmartbluegray900: return AppRoutes.popularMenuTwoPage; case BottomBarEnum.Trashgray500: return AppRoutes.orderHistoryOnePage; case BottomBarEnum.Hugeiconuseroutlineuser: return AppRoutes.userProfileLongerPage; case BottomBarEnum.Signal: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.popularMenuTwoPage: return PopularMenuTwoPage(); case AppRoutes.orderHistoryOnePage: return OrderHistoryOnePage(); case AppRoutes.userProfileLongerPage: return UserProfileLongerPage(); default: return DefaultWidget();} } 
 }
