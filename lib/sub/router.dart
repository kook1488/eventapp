import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wordapp/main/eve1.dart';
import 'package:wordapp/main/eve13.dart';
import 'package:wordapp/main/eve14.dart';
import 'package:wordapp/main/eve15.dart';


final routers = GoRouter(  //처음 보이는 화면 설정
  initialLocation: "/eve14",
  routes: [

    GoRoute(
      path: "/eve1",
      name: "eve1",
      pageBuilder: (context, state) =>
          _buildPageWithTransition(Eve1()),
      //pageBuilder: (context, state) =>
      //  NoTransitionPage(child: Eve1()),
    ),

    GoRoute(
      path: "/eve13",
      name: "eve13",
      pageBuilder: (context, state) =>
          _buildPageWithTransition(Eve13()),
    ),

    GoRoute(
      path: "/eve14",
      name: "eve14",
      pageBuilder: (context, state) =>
          _buildPageWithTransition(Eve14()),
    ),

    GoRoute(
      path: "/eve15",
      name: "eve15",
      pageBuilder: (context, state) =>
          _buildPageWithTransition(Eve15()),
     //pageBuilder: (context, state) { return NoTransitionPage(child: Container());}
    ),
  ],
);


//페이지에 붙이는 예시
 /*
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: TextButton(child: Text('루트1'),onPressed: (){
        context.push('/root2');
      },),
    ),
  );
}  */

//왜 안먹히는걸까....
Page<void> _buildPageWithTransition(Widget child) {
  return CustomTransitionPage(
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // 스케일 애니메이션 설정
      const double scaleBegin = 1.5; // 확대된 상태로 시작
      const double scaleEnd = 1.0; // 원래 크기로 끝
      final Curve scaleCurve = Curves.easeInOut;

      var scaleTween = Tween(begin: scaleBegin, end: scaleEnd).chain(CurveTween(curve: scaleCurve));
      var scaleAnimation = animation.drive(scaleTween);

      // 페이드 애니메이션 설정
      const double fadeBegin = 0.0; // 완전히 투명한 상태로 시작
      const double fadeEnd = 1.0; // 완전히 불투명한 상태로 끝
      final Curve fadeCurve = Curves.easeInOut;

      var fadeTween = Tween(begin: fadeBegin, end: fadeEnd).chain(CurveTween(curve: fadeCurve));
      var fadeAnimation = animation.drive(fadeTween);

      // 페이드와 스케일 애니메이션을 결합
      return FadeTransition(
        opacity: fadeAnimation,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(milliseconds: 200), // 전환 시간 설정
  );
}