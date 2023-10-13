import 'package:go_router/go_router.dart';
import 'package:userapp/src/models/meal_category.dart';
import 'package:userapp/src/screens/auth/registration_successful.dart';
import 'package:userapp/src/screens/auth/login.dart';
import 'package:userapp/src/screens/auth/login_successful.dart';
import 'package:userapp/src/screens/auth/registration.dart';
import 'package:userapp/src/screens/auth/bio.dart';
import 'package:userapp/src/screens/favourites/favorite.dart';
import 'package:userapp/src/screens/home/home.dart';
import 'package:userapp/src/screens/home/search_dishes_page.dart';
import 'package:userapp/src/screens/introduction/introduction_screen.dart';
import 'package:userapp/src/screens/splash/splash_screen.dart';
import 'package:userapp/src/utils/routes.dart';

final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.initial,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.introduction,
      builder: (context, state) => const IntroductionScreen(),
    ),
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
      routes: const [
        // GoRoute(
        //   path: Routes.loginSuccessful,
        //   builder: (context, state) => const LoginSuccessful(),
        // ),
      ],
    ),
    GoRoute(
      path: Routes.loginSuccessful,
      builder: (context, state) => const LoginSuccessful(),
    ),
    GoRoute(
      path: Routes.bioScreen,
      builder: (context, state) => const BioScreen(),
    ),
    GoRoute(
      path: Routes.registration,
      builder: (context, state) => const RegistrationScreen(),
      routes: const [
        // GoRoute(
        //   path: Routes.registrationSuccessful,
        //   builder: (context, state) => const RegistrationSuccessfull(),
        // ),
      ],
    ),
    // GoRoute(
    //   path: Routes.genderSelectionScreen,
    //   builder: (context, state) => const GenderSelectionScreen(),
    // ),
    GoRoute(
      path: Routes.registrationSuccessful,
      builder: (context, state) => const RegistrationSuccesful(),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: Routes.favorites,
      builder: (context, state) => FavoritePage(
        categories: [
          italianCategory,
          mexicanCategory,
          indianCategory,
          dessertCategory,
          vegetarianCategory,
          meatsCategory,
        ],
      ),
    ),
     GoRoute(
      path: Routes.searchPage,
      builder: (context, state) => const SearchDishesPage(),
    ),
  ],
);
