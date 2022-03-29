
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matcher/matcher.dart';

import '../Bloc/Login/login_cubit.dart';
import '../Bloc/User/user_cubit.dart';
import '../Constants/Strings/app_string.dart';
import '../Presentation/Pages/Home/home_page.dart';
import '../Presentation/Pages/Login/login_page.dart';
import '../Presentation/Screens/forget_password.dart';
import '../Presentation/Screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: HomePage(),
            ));
      case LOGIN_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => LoginCubit(),
              child: LoginPage(),
            ));
      case FORGET_PASSWORD_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: ForgetPasswordPage(),
            ));
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: Container(),
            ));
    }
  }
}