import 'package:flutter/material.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_one_screen/popular_menu_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_screen/popular_menu_tags_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tab_container_screen/popular_menu_tab_container_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_two_container_screen/popular_menu_two_container_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_two_screen/popular_menu_tags_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_four_screen/popular_menu_tags_four_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_three_screen/popular_menu_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_typing_screen/popular_menu_typing_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_one_screen/popular_menu_tags_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_screen/order_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_one_screen/order_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_four_screen/order_four_screen.dart';
import 'package:mohd_kaif_s_application/presentation/notifications_screen/notifications_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_three_screen/order_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/deliver_adress_one_screen/deliver_adress_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/notifications_one_screen/notifications_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_two_screen/order_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/deliver_adress_screen/deliver_adress_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_one1_screen/order_one1_screen.dart';
import 'package:mohd_kaif_s_application/presentation/introduction_screen/introduction_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_keyboard_up_one_screen/log_in_page_keyboard_up_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_filled_inputs_one_screen/log_in_page_filled_inputs_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_one_screen/log_in_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_filled_inputs_screen/log_in_page_filled_inputs_screen.dart';
import 'package:mohd_kaif_s_application/presentation/splash_screen/splash_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_screen/log_in_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_keyboard_up_screen/log_in_page_keyboard_up_screen.dart';
import 'package:mohd_kaif_s_application/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/v1_screen/v1_screen.dart';
import 'package:mohd_kaif_s_application/presentation/v2_screen/v2_screen.dart';
import 'package:mohd_kaif_s_application/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/introduction_one_screen/introduction_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_three_screen/log_in_page_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_two_screen/log_in_page_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_keyboard_up_two_screen/log_in_page_keyboard_up_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_keyboard_up_three_screen/log_in_page_keyboard_up_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_filled_inputs_two_screen/log_in_page_filled_inputs_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/log_in_page_filled_inputs_three_screen/log_in_page_filled_inputs_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/sign_up_page_one_screen/sign_up_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/sign_up_page_two_screen/sign_up_page_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/sign_up_page_filled_inputs_screen/sign_up_page_filled_inputs_screen.dart';
import 'package:mohd_kaif_s_application/presentation/sign_up_page_filled_inputs_one_screen/sign_up_page_filled_inputs_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/bio_page_screen/bio_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/bio_page_one_screen/bio_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/payment_one_screen/payment_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/payment_screen/payment_screen.dart';
import 'package:mohd_kaif_s_application/presentation/add_credit_card_screen/add_credit_card_screen.dart';
import 'package:mohd_kaif_s_application/presentation/add_credit_card_one_screen/add_credit_card_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_one_screen/upload_photo_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_screen/upload_photo_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_with_portrait_screen/upload_photo_with_portrait_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_with_portrait_two_screen/upload_photo_with_portrait_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_with_portrait_one_screen/upload_photo_with_portrait_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/upload_photo_with_portrait_three_screen/upload_photo_with_portrait_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/home_page_screen/home_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/home_page_one_screen/home_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/home_page_full_one_screen/home_page_full_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/home_page_full_screen/home_page_full_screen.dart';
import 'package:mohd_kaif_s_application/presentation/notifications_two_screen/notifications_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/notifications_three_screen/notifications_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_nine_screen/order_nine_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_six_screen/order_six_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_five_screen/order_five_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_one_one_screen/order_one_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/deliver_adress_three_screen/deliver_adress_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/deliver_adress_two_screen/deliver_adress_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_seven_screen/order_seven_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_eight_screen/order_eight_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_history_screen/order_history_screen.dart';
import 'package:mohd_kaif_s_application/presentation/map_one_screen/map_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/map_screen/map_screen.dart';
import 'package:mohd_kaif_s_application/presentation/map_pin_one_screen/map_pin_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/map_pin_screen/map_pin_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_completed_write_review_screen/order_completed_write_review_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_completed_write_review_one_screen/order_completed_write_review_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_completed_write_review_keyboard_up_one_screen/order_completed_write_review_keyboard_up_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/order_completed_write_review_keyboard_up_screen/order_completed_write_review_keyboard_up_screen.dart';
import 'package:mohd_kaif_s_application/presentation/restaurant_review_one_screen/restaurant_review_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/restaurant_review_screen/restaurant_review_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_two_screen/resturant_page_two_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_three_screen/resturant_page_three_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_six_screen/resturant_page_six_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_four_screen/resturant_page_four_screen.dart';
import 'package:mohd_kaif_s_application/presentation/testimonials_screen/testimonials_screen.dart';
import 'package:mohd_kaif_s_application/presentation/testimonials_one_screen/testimonials_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_one_screen/resturant_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_seven_screen/resturant_page_seven_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_screen/resturant_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/resturant_page_five_screen/resturant_page_five_screen.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_screen/user_profile_screen.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_one_screen/user_profile_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/user_profile_longer_one_screen/user_profile_longer_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/favotires_one_screen/favotires_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/favorites_keyboard_up_screen/favorites_keyboard_up_screen.dart';
import 'package:mohd_kaif_s_application/presentation/favorites_keyboard_up_one_screen/favorites_keyboard_up_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/favotires_screen/favotires_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_seven_screen/popular_menu_seven_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_six_screen/popular_menu_six_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_typing_one_screen/popular_menu_typing_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_four_screen/popular_menu_four_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_nine_screen/popular_menu_tags_nine_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_six_screen/popular_menu_tags_six_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_seven_screen/popular_menu_tags_seven_screen.dart';
import 'package:mohd_kaif_s_application/presentation/popular_menu_tags_five_screen/popular_menu_tags_five_screen.dart';
import 'package:mohd_kaif_s_application/presentation/discount_page_screen/discount_page_screen.dart';
import 'package:mohd_kaif_s_application/presentation/discount_page_one_screen/discount_page_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:mohd_kaif_s_application/presentation/change_password_screen/change_password_screen.dart';
import 'package:mohd_kaif_s_application/presentation/change_password_one_screen/change_password_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/congrats_one_screen/congrats_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/congrats_screen/congrats_screen.dart';
import 'package:mohd_kaif_s_application/presentation/calling_screen/calling_screen.dart';
import 'package:mohd_kaif_s_application/presentation/calling_one_screen/calling_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/in_the_call_screen/in_the_call_screen.dart';
import 'package:mohd_kaif_s_application/presentation/in_the_call_one_screen/in_the_call_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/messages_screen/messages_screen.dart';
import 'package:mohd_kaif_s_application/presentation/messages_one_screen/messages_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/chat_keyboard_up_one_screen/chat_keyboard_up_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/chat_keyboard_up_screen/chat_keyboard_up_screen.dart';
import 'package:mohd_kaif_s_application/presentation/chat_one_screen/chat_one_screen.dart';
import 'package:mohd_kaif_s_application/presentation/chat_screen/chat_screen.dart';
import 'package:mohd_kaif_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String popularMenuOneScreen = '/popular_menu_one_screen';

  static const String popularMenuTagsScreen = '/popular_menu_tags_screen';

  static const String popularMenuPage = '/popular_menu_page';

  static const String popularMenuTabContainerScreen =
      '/popular_menu_tab_container_screen';

  static const String popularMenuTwoPage = '/popular_menu_two_page';

  static const String popularMenuTwoContainerScreen =
      '/popular_menu_two_container_screen';

  static const String popularMenuTagsTwoScreen =
      '/popular_menu_tags_two_screen';

  static const String popularMenuTagsFourScreen =
      '/popular_menu_tags_four_screen';

  static const String popularMenuThreeScreen = '/popular_menu_three_screen';

  static const String popularMenuTypingScreen = '/popular_menu_typing_screen';

  static const String popularMenuTagsOneScreen =
      '/popular_menu_tags_one_screen';

  static const String popularMenuTagsThreePage =
      '/popular_menu_tags_three_page';

  static const String orderScreen = '/order_screen';

  static const String orderOneScreen = '/order_one_screen';

  static const String orderFourScreen = '/order_four_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String orderThreeScreen = '/order_three_screen';

  static const String deliverAdressOneScreen = '/deliver_adress_one_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String orderTwoScreen = '/order_two_screen';

  static const String deliverAdressScreen = '/deliver_adress_screen';

  static const String orderOne1Screen = '/order_one1_screen';

  static const String introductionScreen = '/introduction_screen';

  static const String logInPageKeyboardUpOneScreen =
      '/log_in_page_keyboard_up_one_screen';

  static const String logInPageFilledInputsOneScreen =
      '/log_in_page_filled_inputs_one_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String logInPageOneScreen = '/log_in_page_one_screen';

  static const String logInPageFilledInputsScreen =
      '/log_in_page_filled_inputs_screen';

  static const String splashScreen = '/splash_screen';

  static const String logInPageScreen = '/log_in_page_screen';

  static const String logInPageKeyboardUpScreen =
      '/log_in_page_keyboard_up_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String v1Screen = '/v1_screen';

  static const String v2Screen = '/v2_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String introductionOneScreen = '/introduction_one_screen';

  static const String logInPageThreeScreen = '/log_in_page_three_screen';

  static const String logInPageTwoScreen = '/log_in_page_two_screen';

  static const String logInPageKeyboardUpTwoScreen =
      '/log_in_page_keyboard_up_two_screen';

  static const String logInPageKeyboardUpThreeScreen =
      '/log_in_page_keyboard_up_three_screen';

  static const String logInPageFilledInputsTwoScreen =
      '/log_in_page_filled_inputs_two_screen';

  static const String logInPageFilledInputsThreeScreen =
      '/log_in_page_filled_inputs_three_screen';

  static const String signUpPageOneScreen = '/sign_up_page_one_screen';

  static const String signUpPageTwoScreen = '/sign_up_page_two_screen';

  static const String signUpPageFilledInputsScreen =
      '/sign_up_page_filled_inputs_screen';

  static const String signUpPageFilledInputsOneScreen =
      '/sign_up_page_filled_inputs_one_screen';

  static const String bioPageScreen = '/bio_page_screen';

  static const String bioPageOneScreen = '/bio_page_one_screen';

  static const String paymentOneScreen = '/payment_one_screen';

  static const String paymentScreen = '/payment_screen';

  static const String addCreditCardScreen = '/add_credit_card_screen';

  static const String addCreditCardOneScreen = '/add_credit_card_one_screen';

  static const String uploadPhotoOneScreen = '/upload_photo_one_screen';

  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String uploadPhotoWithPortraitScreen =
      '/upload_photo_with_portrait_screen';

  static const String uploadPhotoWithPortraitTwoScreen =
      '/upload_photo_with_portrait_two_screen';

  static const String uploadPhotoWithPortraitOneScreen =
      '/upload_photo_with_portrait_one_screen';

  static const String uploadPhotoWithPortraitThreeScreen =
      '/upload_photo_with_portrait_three_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String homePageOneScreen = '/home_page_one_screen';

  static const String homePageFullOneScreen = '/home_page_full_one_screen';

  static const String homePageFullScreen = '/home_page_full_screen';

  static const String notificationsTwoScreen = '/notifications_two_screen';

  static const String notificationsThreeScreen = '/notifications_three_screen';

  static const String orderNineScreen = '/order_nine_screen';

  static const String orderSixScreen = '/order_six_screen';

  static const String orderFiveScreen = '/order_five_screen';

  static const String orderOneOneScreen = '/order_one_one_screen';

  static const String deliverAdressThreeScreen = '/deliver_adress_three_screen';

  static const String deliverAdressTwoScreen = '/deliver_adress_two_screen';

  static const String orderSevenScreen = '/order_seven_screen';

  static const String orderEightScreen = '/order_eight_screen';

  static const String orderHistoryOnePage = '/order_history_one_page';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String mapOneScreen = '/map_one_screen';

  static const String mapScreen = '/map_screen';

  static const String mapPinOneScreen = '/map_pin_one_screen';

  static const String mapPinScreen = '/map_pin_screen';

  static const String orderCompletedWriteReviewScreen =
      '/order_completed_write_review_screen';

  static const String orderCompletedWriteReviewOneScreen =
      '/order_completed_write_review_one_screen';

  static const String orderCompletedWriteReviewKeyboardUpOneScreen =
      '/order_completed_write_review_keyboard_up_one_screen';

  static const String orderCompletedWriteReviewKeyboardUpScreen =
      '/order_completed_write_review_keyboard_up_screen';

  static const String restaurantReviewOneScreen =
      '/restaurant_review_one_screen';

  static const String restaurantReviewScreen = '/restaurant_review_screen';

  static const String resturantPageTwoScreen = '/resturant_page_two_screen';

  static const String resturantPageThreeScreen = '/resturant_page_three_screen';

  static const String resturantPageSixScreen = '/resturant_page_six_screen';

  static const String resturantPageFourScreen = '/resturant_page_four_screen';

  static const String testimonialsScreen = '/testimonials_screen';

  static const String testimonialsOneScreen = '/testimonials_one_screen';

  static const String resturantPageOneScreen = '/resturant_page_one_screen';

  static const String resturantPageSevenScreen = '/resturant_page_seven_screen';

  static const String resturantPageScreen = '/resturant_page_screen';

  static const String resturantPageFiveScreen = '/resturant_page_five_screen';

  static const String userProfileScreen = '/user_profile_screen';

  static const String userProfileOneScreen = '/user_profile_one_screen';

  static const String userProfileLongerPage = '/user_profile_longer_page';

  static const String userProfileLongerOneScreen =
      '/user_profile_longer_one_screen';

  static const String favotiresOneScreen = '/favotires_one_screen';

  static const String favoritesKeyboardUpScreen =
      '/favorites_keyboard_up_screen';

  static const String favoritesKeyboardUpOneScreen =
      '/favorites_keyboard_up_one_screen';

  static const String favotiresScreen = '/favotires_screen';

  static const String popularMenuSevenScreen = '/popular_menu_seven_screen';

  static const String popularMenuSixScreen = '/popular_menu_six_screen';

  static const String popularMenuTypingOneScreen =
      '/popular_menu_typing_one_screen';

  static const String popularMenuFourScreen = '/popular_menu_four_screen';

  static const String popularMenuTagsNineScreen =
      '/popular_menu_tags_nine_screen';

  static const String popularMenuTagsSixScreen =
      '/popular_menu_tags_six_screen';

  static const String popularMenuTagsSevenScreen =
      '/popular_menu_tags_seven_screen';

  static const String popularMenuTagsFiveScreen =
      '/popular_menu_tags_five_screen';

  static const String popularMenuTagsEightPage =
      '/popular_menu_tags_eight_page';

  static const String popularMenuFivePage = '/popular_menu_five_page';

  static const String discountPageScreen = '/discount_page_screen';

  static const String discountPageOneScreen = '/discount_page_one_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String changePasswordOneScreen = '/change_password_one_screen';

  static const String congratsOneScreen = '/congrats_one_screen';

  static const String congratsScreen = '/congrats_screen';

  static const String callingScreen = '/calling_screen';

  static const String callingOneScreen = '/calling_one_screen';

  static const String inTheCallScreen = '/in_the_call_screen';

  static const String inTheCallOneScreen = '/in_the_call_one_screen';

  static const String messagesScreen = '/messages_screen';

  static const String messagesOneScreen = '/messages_one_screen';

  static const String chatKeyboardUpOneScreen = '/chat_keyboard_up_one_screen';

  static const String chatKeyboardUpScreen = '/chat_keyboard_up_screen';

  static const String chatOneScreen = '/chat_one_screen';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    popularMenuOneScreen: (context) => PopularMenuOneScreen(),
    popularMenuTagsScreen: (context) => PopularMenuTagsScreen(),
    popularMenuTabContainerScreen: (context) => PopularMenuTabContainerScreen(),
    popularMenuTwoContainerScreen: (context) => PopularMenuTwoContainerScreen(),
    popularMenuTagsTwoScreen: (context) => PopularMenuTagsTwoScreen(),
    popularMenuTagsFourScreen: (context) => PopularMenuTagsFourScreen(),
    popularMenuThreeScreen: (context) => PopularMenuThreeScreen(),
    popularMenuTypingScreen: (context) => PopularMenuTypingScreen(),
    popularMenuTagsOneScreen: (context) => PopularMenuTagsOneScreen(),
    orderScreen: (context) => OrderScreen(),
    orderOneScreen: (context) => OrderOneScreen(),
    orderFourScreen: (context) => OrderFourScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    orderThreeScreen: (context) => OrderThreeScreen(),
    deliverAdressOneScreen: (context) => DeliverAdressOneScreen(),
    notificationsOneScreen: (context) => NotificationsOneScreen(),
    orderTwoScreen: (context) => OrderTwoScreen(),
    deliverAdressScreen: (context) => DeliverAdressScreen(),
    orderOne1Screen: (context) => OrderOne1Screen(),
    introductionScreen: (context) => IntroductionScreen(),
    logInPageKeyboardUpOneScreen: (context) => LogInPageKeyboardUpOneScreen(),
    logInPageFilledInputsOneScreen: (context) =>
        LogInPageFilledInputsOneScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    logInPageOneScreen: (context) => LogInPageOneScreen(),
    logInPageFilledInputsScreen: (context) => LogInPageFilledInputsScreen(),
    splashScreen: (context) => SplashScreen(),
    logInPageScreen: (context) => LogInPageScreen(),
    logInPageKeyboardUpScreen: (context) => LogInPageKeyboardUpScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    v1Screen: (context) => V1Screen(),
    v2Screen: (context) => V2Screen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    introductionOneScreen: (context) => IntroductionOneScreen(),
    logInPageThreeScreen: (context) => LogInPageThreeScreen(),
    logInPageTwoScreen: (context) => LogInPageTwoScreen(),
    logInPageKeyboardUpTwoScreen: (context) => LogInPageKeyboardUpTwoScreen(),
    logInPageKeyboardUpThreeScreen: (context) =>
        LogInPageKeyboardUpThreeScreen(),
    logInPageFilledInputsTwoScreen: (context) =>
        LogInPageFilledInputsTwoScreen(),
    logInPageFilledInputsThreeScreen: (context) =>
        LogInPageFilledInputsThreeScreen(),
    signUpPageOneScreen: (context) => SignUpPageOneScreen(),
    signUpPageTwoScreen: (context) => SignUpPageTwoScreen(),
    signUpPageFilledInputsScreen: (context) => SignUpPageFilledInputsScreen(),
    signUpPageFilledInputsOneScreen: (context) =>
        SignUpPageFilledInputsOneScreen(),
    bioPageScreen: (context) => BioPageScreen(),
    bioPageOneScreen: (context) => BioPageOneScreen(),
    paymentOneScreen: (context) => PaymentOneScreen(),
    paymentScreen: (context) => PaymentScreen(),
    addCreditCardScreen: (context) => AddCreditCardScreen(),
    addCreditCardOneScreen: (context) => AddCreditCardOneScreen(),
    uploadPhotoOneScreen: (context) => UploadPhotoOneScreen(),
    uploadPhotoScreen: (context) => UploadPhotoScreen(),
    uploadPhotoWithPortraitScreen: (context) => UploadPhotoWithPortraitScreen(),
    uploadPhotoWithPortraitTwoScreen: (context) =>
        UploadPhotoWithPortraitTwoScreen(),
    uploadPhotoWithPortraitOneScreen: (context) =>
        UploadPhotoWithPortraitOneScreen(),
    uploadPhotoWithPortraitThreeScreen: (context) =>
        UploadPhotoWithPortraitThreeScreen(),
    homePageScreen: (context) => HomePageScreen(),
    homePageOneScreen: (context) => HomePageOneScreen(),
    homePageFullOneScreen: (context) => HomePageFullOneScreen(),
    homePageFullScreen: (context) => HomePageFullScreen(),
    notificationsTwoScreen: (context) => NotificationsTwoScreen(),
    notificationsThreeScreen: (context) => NotificationsThreeScreen(),
    orderNineScreen: (context) => OrderNineScreen(),
    orderSixScreen: (context) => OrderSixScreen(),
    orderFiveScreen: (context) => OrderFiveScreen(),
    orderOneOneScreen: (context) => OrderOneOneScreen(),
    deliverAdressThreeScreen: (context) => DeliverAdressThreeScreen(),
    deliverAdressTwoScreen: (context) => DeliverAdressTwoScreen(),
    orderSevenScreen: (context) => OrderSevenScreen(),
    orderEightScreen: (context) => OrderEightScreen(),
    orderHistoryScreen: (context) => OrderHistoryScreen(),
    mapOneScreen: (context) => MapOneScreen(),
    mapScreen: (context) => MapScreen(),
    mapPinOneScreen: (context) => MapPinOneScreen(),
    mapPinScreen: (context) => MapPinScreen(),
    orderCompletedWriteReviewScreen: (context) =>
        OrderCompletedWriteReviewScreen(),
    orderCompletedWriteReviewOneScreen: (context) =>
        OrderCompletedWriteReviewOneScreen(),
    orderCompletedWriteReviewKeyboardUpOneScreen: (context) =>
        OrderCompletedWriteReviewKeyboardUpOneScreen(),
    orderCompletedWriteReviewKeyboardUpScreen: (context) =>
        OrderCompletedWriteReviewKeyboardUpScreen(),
    restaurantReviewOneScreen: (context) => RestaurantReviewOneScreen(),
    restaurantReviewScreen: (context) => RestaurantReviewScreen(),
    resturantPageTwoScreen: (context) => ResturantPageTwoScreen(),
    resturantPageThreeScreen: (context) => ResturantPageThreeScreen(),
    resturantPageSixScreen: (context) => ResturantPageSixScreen(),
    resturantPageFourScreen: (context) => ResturantPageFourScreen(),
    testimonialsScreen: (context) => TestimonialsScreen(),
    testimonialsOneScreen: (context) => TestimonialsOneScreen(),
    resturantPageOneScreen: (context) => ResturantPageOneScreen(),
    resturantPageSevenScreen: (context) => ResturantPageSevenScreen(),
    resturantPageScreen: (context) => ResturantPageScreen(),
    resturantPageFiveScreen: (context) => ResturantPageFiveScreen(),
    userProfileScreen: (context) => UserProfileScreen(),
    userProfileOneScreen: (context) => UserProfileOneScreen(),
    userProfileLongerOneScreen: (context) => UserProfileLongerOneScreen(),
    favotiresOneScreen: (context) => FavotiresOneScreen(),
    favoritesKeyboardUpScreen: (context) => FavoritesKeyboardUpScreen(),
    favoritesKeyboardUpOneScreen: (context) => FavoritesKeyboardUpOneScreen(),
    favotiresScreen: (context) => FavotiresScreen(),
    popularMenuSevenScreen: (context) => PopularMenuSevenScreen(),
    popularMenuSixScreen: (context) => PopularMenuSixScreen(),
    popularMenuTypingOneScreen: (context) => PopularMenuTypingOneScreen(),
    popularMenuFourScreen: (context) => PopularMenuFourScreen(),
    popularMenuTagsNineScreen: (context) => PopularMenuTagsNineScreen(),
    popularMenuTagsSixScreen: (context) => PopularMenuTagsSixScreen(),
    popularMenuTagsSevenScreen: (context) => PopularMenuTagsSevenScreen(),
    popularMenuTagsFiveScreen: (context) => PopularMenuTagsFiveScreen(),
    discountPageScreen: (context) => DiscountPageScreen(),
    discountPageOneScreen: (context) => DiscountPageOneScreen(),
    forgotPasswordOneScreen: (context) => ForgotPasswordOneScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    changePasswordOneScreen: (context) => ChangePasswordOneScreen(),
    congratsOneScreen: (context) => CongratsOneScreen(),
    congratsScreen: (context) => CongratsScreen(),
    callingScreen: (context) => CallingScreen(),
    callingOneScreen: (context) => CallingOneScreen(),
    inTheCallScreen: (context) => InTheCallScreen(),
    inTheCallOneScreen: (context) => InTheCallOneScreen(),
    messagesScreen: (context) => MessagesScreen(),
    messagesOneScreen: (context) => MessagesOneScreen(),
    chatKeyboardUpOneScreen: (context) => ChatKeyboardUpOneScreen(),
    chatKeyboardUpScreen: (context) => ChatKeyboardUpScreen(),
    chatOneScreen: (context) => ChatOneScreen(),
    chatScreen: (context) => ChatScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
