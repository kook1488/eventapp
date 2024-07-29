import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wordapp/main/eve1.dart';
import 'package:wordapp/main/eve2.dart';
import 'package:wordapp/main/eve3.dart';
import 'package:wordapp/main/eve4.dart';
import 'package:wordapp/main/eve5.dart';
import 'package:wordapp/main/eve6.dart';
import 'package:wordapp/main/eve7.dart';
import 'package:wordapp/main/eve8.dart';
import 'package:wordapp/main/eve10.dart';
import 'package:wordapp/main/eve13.dart';
import 'package:wordapp/main/eve14.dart';
import 'package:wordapp/main/eve15.dart';

final routers = GoRouter(
  initialLocation: "/eve13",
  routes: [
    GoRoute(
      path: "/eve1",
      name: "eve1",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve1()),
    ),
    GoRoute(
      path: "/eve2",
      name: "eve2",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve2()),
    ),
    GoRoute(
      path: "/eve3",
      name: "eve3",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve3()),
    ),
    GoRoute(
      path: "/eve4",
      name: "eve4",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve4()),
    ),
    GoRoute(
      path: "/eve5",
      name: "eve5",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve5()),
    ),
    GoRoute(
      path: "/eve6",
      name: "eve6",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve6()),
    ),
    GoRoute(
      path: "/eve7",
      name: "eve7",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve7()),
    ),
    GoRoute(
      path: "/eve8",
      name: "eve8",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve8()),
    ),
    GoRoute(
      path: "/eve10",
      name: "eve10",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve10()),
    ),
    GoRoute(
      path: "/eve13",
      name: "eve13",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve13()),
    ),
    GoRoute(
      path: "/eve14",
      name: "eve14",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve14()),
    ),
    GoRoute(
      path: "/eve15",
      name: "eve15",
      pageBuilder: (context, state) => _buildPageWithTransition(state, Eve15()),
    ),
  ],
);

CustomTransitionPage<void> _buildPageWithTransition(GoRouterState state, Widget child) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
//dfs