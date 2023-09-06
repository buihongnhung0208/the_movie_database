import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:the_movie_database/presentation/navigation/navigation_utils.dart';
import 'package:the_movie_database/presentation/scenes/detail_cast/detail_cast_screen.dart';
import 'package:the_movie_database/presentation/scenes/detail_movie/detail_movie_screen.dart';
import 'package:the_movie_database/presentation/scenes/home/home_screen.dart';
import 'package:the_movie_database/presentation/scenes/list_movie/list_movie_screen.dart';

const GlobalKey<NavigatorState> rootNavigatorKey = GlobalObjectKey<NavigatorState>('root');

class MainRoutes {
  const MainRoutes._();

  static const home = '/home';
  static const listMovies = 'listMovies';
  static const detailMovie = 'detailMovie';
  static const detailCast = 'detailCast';
  static const webView = 'webView';
}

final newRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: MainRoutes.home,
  restorationScopeId: 'new_router',
  routes: [homeRoute],
);

final homeRoute = GoRoute(
  path: MainRoutes.home,
  parentNavigatorKey: rootNavigatorKey,
  pageBuilder: (context, state) => CupertinoPage(
    child: HomeScreen(
      navigateToList: (context, title) => GoRouter.of(context).pushNamed(
        NavigationUtils.getSubRouteName(
          [MainRoutes.home, MainRoutes.listMovies],
        ),
        extra: {'title': title},
      ),
      navigateToDetail: (context, id) => GoRouter.of(context).pushNamed(
        NavigationUtils.getSubRouteName(
          [MainRoutes.home, MainRoutes.detailMovie],
        ),
        extra: {'id': id},
      ),
    ),
  ),
  routes: [
    listMoviesRoute(rootName: MainRoutes.home),
    detailMovieRoute(rootName: MainRoutes.home),
  ],
);

GoRoute listMoviesRoute({
  required String rootName,
}) {
  final rootSubRouteName = NavigationUtils.getSubRouteName(
    [rootName, MainRoutes.listMovies],
  );

  return GoRoute(
    name: rootSubRouteName,
    path: MainRoutes.listMovies,
    parentNavigatorKey: rootNavigatorKey,
    pageBuilder: (context, state) => CupertinoPage(
      child: ListMovieScreen(
        navigateToDetail: (context, id) => GoRouter.of(context).pushNamed(
          NavigationUtils.getSubRouteName(
            [rootSubRouteName, MainRoutes.detailMovie],
          ),
          extra: {'id': id},
        ),
        title: (state.extra as Map)['title'],
      ),
    ),
    routes: [
      detailMovieRoute(rootName: rootSubRouteName),
    ],
  );
}

GoRoute detailMovieRoute({
  required String rootName,
}) {
  final rootSubRouteName = NavigationUtils.getSubRouteName(
    [rootName, MainRoutes.detailMovie],
  );

  return GoRoute(
    name: rootSubRouteName,
    path: MainRoutes.detailMovie,
    parentNavigatorKey: rootNavigatorKey,
    pageBuilder: (context, state) => CupertinoPage(
      child: DetailMovieScreen(
        navigateToDetail: (context, id) => GoRouter.of(context).pushNamed(
          NavigationUtils.getSubRouteName(
            [rootSubRouteName],
          ),
        ),
        navigateToDetailCast: (context, id) => GoRouter.of(context).pushNamed(
          NavigationUtils.getSubRouteName(
            [rootSubRouteName, MainRoutes.detailCast],
          ),
        ),
        id: (state.extra as Map)['id'],
      ),
    ),
    routes: [
      detailCastRoute(rootName: rootSubRouteName),
    ],
  );
}

GoRoute detailCastRoute({
  required String rootName,
}) {
  final rootSubRouteName = NavigationUtils.getSubRouteName(
    [rootName, MainRoutes.detailCast],
  );

  return GoRoute(
    name: rootSubRouteName,
    path: MainRoutes.detailCast,
    parentNavigatorKey: rootNavigatorKey,
    pageBuilder: (context, state) => const CupertinoPage(
      child: DetailCastScreen(),
    ),
  );
}
