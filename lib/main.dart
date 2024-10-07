import 'package:bogging_app/core/constant/my_strings.dart';
import 'package:bogging_app/core/themes/app_themes.dart';
import 'package:bogging_app/presentation/router/router_import.dart';
import 'package:bogging_app/presentation/screens/general/tags/tags_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

import 'data/repositories/repository.dart';
import 'data/repositories/tags_repo.dart';

void main() {
  runApp(RepositoryProvider(
      create: (context) => Repository(
        tagsRepo: TagsRepo(),
      ),
    child : MyApp(),
  ));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final _appRouter = AppRouter();
 @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize : const Size(390 , 844),
      minTextAdapt: true,
      splitScreenMode: true,
        useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: MyStrings.appName,
          theme: AppThemes.light,
          darkTheme : AppThemes.dark,
          routerConfig: _appRouter.config(),
          // home: Text(MyStrings.appName),
          // home: const MyHomePage(title: 'Flutter'),
        );
      }
    );
  }
}




