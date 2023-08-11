import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/routes/routes.dart';
import 'package:the_movie_database/resources/colors.dart';
import 'package:the_movie_database/resources/dimens.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize:  const Size(Dimens.size_390, Dimens.size_844),
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: Theme.of(context).colorScheme.copyWith(
            background: AppColors.f042541,
          ),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.white,
          ),
        ),
        routerConfig: newRouter,
        builder: (context, widget) {
          // registerAppKey(newRouter.routerDelegate.navigatorKey);

          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: widget!,
          );
        },
      ),
    );
  }
}
