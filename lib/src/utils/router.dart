import 'package:go_router/go_router.dart';
import 'package:userapp/src/screens/auth/registration_successful.dart';
import 'package:userapp/src/screens/auth/login.dart';
import 'package:userapp/src/screens/auth/login_successful.dart';
import 'package:userapp/src/screens/auth/registration.dart';
import 'package:userapp/src/screens/auth/bio.dart';
import 'package:userapp/src/screens/introduction/introduction_screen.dart';
import 'package:userapp/src/screens/splash/splash_screen.dart';
import 'package:userapp/src/utils/routes.dart';

final router = GoRouter(
  initialLocation: Routes.loginSuccessful,
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
  ],
);
