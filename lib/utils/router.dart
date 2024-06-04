import 'package:flutter/material.dart';
import 'package:attendance/features/add_to_attendance/add_to_attendace.dart';
import 'package:attendance/features/homepage/homepage.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: Homepage.path,
  navigatorKey: rootNavigatorKey,
  routes: <RouteBase>[
    GoRoute(
      name: Homepage.routeName,
      path: Homepage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
    ),
    GoRoute(
      name: AddToAttendace.routeName,
      path: AddToAttendace.path,
      builder: (BuildContext context, GoRouterState state) {
        return const AddToAttendace();
      },
    ),
  ],
);

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');
