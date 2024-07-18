import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wordapp/main/eve14.dart';
import 'package:wordapp/main/eve15.dart';

final routers = GoRouter(
  initialLocation: "/event1",
  routes: [
    GoRoute(
      path: "/event1",
      name: "event1",
      pageBuilder: (context, state) =>
       NoTransitionPage(child: Event1()),
    ),
    GoRoute(
      path: "/event2",

      name: "event2",
      pageBuilder: (context, state) =>
          NoTransitionPage(child: Event2()),
    ),
    GoRoute(
      path: "/eve13",
      name: "eve13",
     pageBuilder: (context, state) { return NoTransitionPage(child: Container());}
    ),
  ],
);
