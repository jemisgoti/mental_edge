import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/dashboard.dart';
import 'package:mental_edge/src/features/sessions/presentation/pages/splash_screen.dart';

class AppRouter {
  // GoRouter configuration
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
      GoRoute(
        path: SplashScreen.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
      GoRoute(
        path: DashBoard.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const DashBoard(),
      ),
    ],
  );
}
