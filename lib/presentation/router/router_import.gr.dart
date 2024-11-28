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
import 'package:bogging_app/presentation/screens/auth/widgets/home_details.dart';
import 'package:bogging_app/presentation/screens/auth/widgets/home_model.dart';
import 'package:bogging_app/presentation/screens/splash/splash_import.dart'
    as _i1;
import 'package:flutter/cupertino.dart';

import '../screens/auth/Login/login.dart';
import '../screens/auth/Register/register.dart';
import '../screens/general/categories/categories.dart';
import '../screens/general/widgets/general.dart';
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

    // HomeDetailsRoute.name: (routeData) {
    //   return AutoRoutePage<dynamic>(
    //     routeData: routeData,
    //     child: const HomeDetails(
    //       post: args.post,
    //       ima
    //     ),
    //   );
    // },

    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
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

    GeneralPageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const General(),
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

/// generated route for
/// [HomeDetailsPage]

// class HomeDetailsRoute extends PageRouteInfo<void> {
//   const HomeDetailsRoute({List<PageRouteInfo>? children, required Post post})
//       : super(
//     HomeDetailsRoute.name,
//     initialChildren: children,
//   );
//
//   static const String name = 'HomeDetailsRoute';
//
//   static const PageInfo<void> page = PageInfo<void>(name);
//
//   get post => null;
// }

class HomeDetailsRoute extends PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    Key? key,
    required Post post,
    required String imagePath,
    List<PageRouteInfo>? children,
  }) : super(
    HomeDetailsRoute.name,
    args: HomeDetailsRouteArgs(
      key: key,
      post: post,
      imagePath: imagePath,
    ),
    initialChildren: children,
  );

  static const String name = 'HomeDetailsRoute';

  static const PageInfo<HomeDetailsRouteArgs> page =
  PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final Key? key;

  final Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
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


/// generated route for
/// [GeneralPage]
class GeneralPageRoute extends PageRouteInfo<void> {
  const GeneralPageRoute({List<PageRouteInfo>? children})
      : super(
    GeneralPageRoute.name,
    initialChildren: children,
  );

  static const String name = 'GeneralPageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}



