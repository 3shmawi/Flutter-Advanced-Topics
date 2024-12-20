import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev/features/home/data/repo/home_repo.dart';
import 'package:flutter_dev/features/home/logic/home_cubit.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';
import '../di/dependency_injection.dart';

part 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) =>
                  HomeCubit(getIt<HomeRepo>())..getSpecializations(),
              child: const HomeScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
