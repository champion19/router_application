import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_application/main.dart';
import 'package:router_application/routes/routes.dart';
import 'package:router_application/screns/login_screen.dart';
import 'package:router_application/screns/user_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: MyHomePage(),
          );
        },
      ),
      GoRoute(
        name: Routes.login,
        path: Routes.login,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: Routes.user,
        path: '/user/profile/:id',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: UserScreen(),
          );
        },
      ),
    ],
  );
}
