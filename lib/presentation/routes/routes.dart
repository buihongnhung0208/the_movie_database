import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:the_movie_database/presentation/scenes/home/home_screen.dart';
import 'package:the_movie_database/presentation/scenes/list_movie/list_movie_screen.dart';

final GoRouter newRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'popular',
          builder: (BuildContext context, GoRouterState state) {
            return const ListMovieScreen();
          },
        ),
      ],
    ),
  ],
);
