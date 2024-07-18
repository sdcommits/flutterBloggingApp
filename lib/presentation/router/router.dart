part of 'router_import.dart';
@RoutePage()

@AutoRouterConfig(replaceInRouteName: 'Route')

class AppRouter extends $AppRouter{
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes =>
      [
        AutoRoute(page: SplashRoute.page, path: "/", initial: true),
        AutoRoute(page: OnBoardPageRoute.page, path: "/onboard"),
        AutoRoute(page: AuthPageRoute.page, path: "/auth"),
        AutoRoute(page: LoginPageRoute.page, path: "/login"),
        AutoRoute(page: RegisterPageRoute.page, path: "/register"),
        AutoRoute(page: GeneralPageRoute.page, path: "/general"),
      ];
}





