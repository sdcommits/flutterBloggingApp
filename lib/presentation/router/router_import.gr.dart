// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/presentation/screens/auth/auth.dart';
import 'package:bogging_app/presentation/screens/splash/splash_import.dart'
    as _i1;

import '../screens/auth/Login/login.dart';
import '../screens/auth/Register/register.dart';
import '../screens/onboard/onboard.dart';

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
      );
    },
    OnBoardPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardPage(),
      );
    },

    AuthPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Auth(),
      );
    },

    LoginPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Login(),
      );
    },

    RegisterPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Register(),
      );
    },
  };
}


// ----------------------------------------------------------------------------->>>>>>>>>>>>>>>>>>>>>>>>
/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i2.PageRouteInfo<void> {
  const SplashRoute({List<_i2.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}

/// generated route for
/// [OnBoardPage]
class OnBoardPageRoute extends PageRouteInfo<void> {
  const OnBoardPageRoute({List<PageRouteInfo>? children})
      : super(
    OnBoardPageRoute.name,
    initialChildren: children,
  );

  static const String name = 'OnBoardPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
 // generated route for
//  [RegisterPage]
class RegisterPageRoute extends PageRouteInfo<void> {
  const RegisterPageRoute({List<PageRouteInfo>? children})
      : super(
    RegisterPageRoute.name,
    initialChildren: children,
  );

  static const String name = 'RegisterPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

// generated route for
//  [LoginPage]
class LoginPageRoute extends PageRouteInfo<void> {
  const LoginPageRoute({List<PageRouteInfo>? children})
      : super(
    LoginPageRoute.name,
    initialChildren: children,
  );

  static const String name = 'LoginPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}


/// generated route for
/// [AuthPage]
class AuthPageRoute extends PageRouteInfo<void> {
  const AuthPageRoute({List<PageRouteInfo>? children})
      : super(
    AuthPageRoute.name,
    initialChildren: children,
  );

  static const String name = 'AuthPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

