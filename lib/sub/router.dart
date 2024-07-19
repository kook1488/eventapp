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
          NoTransitionPage(child: Eve1()),
    ),

    GoRoute(
      path: "/eve13",
      name: "eve13",
      pageBuilder: (context, state) =>
       NoTransitionPage(child: Eve13()),
    ),

    GoRoute(
      path: "/eve14",
      name: "eve14",
      pageBuilder: (context, state) =>
          NoTransitionPage(child: Eve14()),
    ),

    GoRoute(
      path: "/eve15",
      name: "eve15",
      pageBuilder: (context, state) =>
          NoTransitionPage(child: Eve15()),
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