import 'package:attendance/src/features/members_page/members_page.dart';
import 'package:flutter/material.dart';
import 'package:attendance/src/features/add_to_attendance/add_to_attendace.dart';
import 'package:attendance/src/features/homepage/homepage.dart';
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
    GoRoute(
      name: MembersPage.routeName,
      path: MembersPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const MembersPage();
      },
    ),
  ],
);

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');
