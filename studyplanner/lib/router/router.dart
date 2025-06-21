import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:studyplanner/pages/home_page.dart';

class RouterClass {
  final router = GoRouter(
    initialLocation: '/',
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(body: Center(child: Text('Error: ${state.error}'))),
    ),
    routes: [
      GoRoute(
        path: "/",
        name: "home",
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
  );
}
