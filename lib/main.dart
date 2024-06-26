import 'package:bogging_app/core/constant/my_strings.dart';
import 'package:bogging_app/core/themes/app_themes.dart';
import 'package:bogging_app/presentation/router/router_import.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final _appRouter = AppRouter();
 @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: MyStrings.appName,
      theme: AppThemes.light,
      darkTheme : AppThemes.dark,
      routerConfig: _appRouter.config(),
      // home: Text(MyStrings.appName),
      // home: const MyHomePage(title: 'Flutter'),
    );
  }
}
