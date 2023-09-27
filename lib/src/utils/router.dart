import 'package:go_router/go_router.dart';
import 'package:userapp/src/screens/auth/login_screen.dart';
import 'package:userapp/src/screens/auth/login_successful_screen.dart';
import 'package:userapp/src/screens/auth/registration_screen.dart';
import 'package:userapp/src/screens/auth/registration_successful_screen.dart';
import 'package:userapp/src/screens/introduction/introduction_screen.dart';
import 'package:userapp/src/screens/splash/splash_screen.dart';
import 'package:userapp/src/utils/routes.dart';

final router = GoRouter(
  initialLocation: Routes.login,
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
      routes: [
        GoRoute(
          path: Routes.loginSuccessful,
          builder: (context, state) => const LoginSuccessful(),
        ),
      ],
    ),
    GoRoute(
      path: Routes.registration,
      builder: (context, state) => const RegistrationScreen(),
      routes: [
        GoRoute(
          path: Routes.registrationSuccessful,
          builder: (context, state) => const RegistrationSuccessfull(),
        ),
      ],
    ),
  ],
);
