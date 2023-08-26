import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/generated/l10n.dart';
import 'package:the_movie_database/presentation/routes/routes.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await FlutterConfig.loadEnvVariables();
      final sharedPrefs = await SharedPreferences.getInstance();
      sharedPrefs.setString('access_token',
          "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMGEwZTI5ZjdlYjljNTcwNGRlYWNmNDM4YzM5OTQ0OCIsInN1YiI6IjVkMzgxZDVhNjBjNTFkNzg2ODgyZTUyYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.FrKyB8DdOdNuwQUaonAqE4S8YTK2cKq3ABQnlwq_fWM");
      runApp(const MyApp());
    },
    (error, stack) {
      print("-----error $error");
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(Dimens.size_390, Dimens.size_844),
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                background: AppColors.ff042541,
              ),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.white,
          ),
        ),
        localizationsDelegates: const [S.delegate],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback: _localeCallback,
        locale: const Locale('en'),
        routerConfig: newRouter,
        builder: (context, widget) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: widget!,
          );
        },
      ),
    );
  }
}

Locale _localeCallback(Locale? locale, Iterable<Locale> supportedLocales) {
  if (locale == null) {
    return supportedLocales.first;
  }
  // Check if the current device locale is supported
  for (var supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == locale.languageCode) {
      return supportedLocale;
    }
  }
  // If the locale of the device is not supported, use the first one
  // from the list.
  return supportedLocales.first;
}
