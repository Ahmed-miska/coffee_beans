import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/features/onBording/ui/onboarging_screen.dart';
import 'package:coffee_beans/features/sign_in/ui/sign_in_screen.dart';
import 'package:coffee_beans/features/splash/ui/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../features/forget_and_reset_password/ui/forget_password_screen.dart';
import '../../features/forget_and_reset_password/ui/reset_password_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignInScreen(),
        );

      case Routes.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );

      case Routes.resetPassword:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );
      default:
        return null;
    }
  }
}
