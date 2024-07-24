import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("애니메이션 효과 학습"),
        backgroundColor: Colors.deepPurple.shade100,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedTextstyle");
                  },
                  child: const Text("AnimatedDefaultTextStyle"),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedContainer");
                  },
                  child: const Text("AnimatedContainer"),
                ),
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedOpacity");
                  },
                  child: const Text("animatedOpacity"),
                ),
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedPositioned");
                  },
                  child: const Text("animatedPositioned"),
                ),
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedAlign");
                  },
                  child: const Text("animatedAlign"),
                ),
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedCrossFade");
                  },
                  child: const Text("animatedCrossFade"),
                ),
                const SizedBox(
                  height: 31,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed("animatedSwitcher");
                  },
                  child: const Text("animatedSwitcher"),
                ),
                const SizedBox(
                  height: 31,
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed("hero");
                  },
                  child: Hero(
                    tag: "hero-tag",
                    child: Image.network(
                      "https://goyang.s3.ap-northeast-2.amazonaws.com/image/banner.png",
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
////opacity
import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool isAnimated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("불투명도 애니메이션"),
        backgroundColor: Colors.deepPurple.shade100,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Align(
              alignment: Alignment.topCenter,
              child: AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: isAnimated ? 1 : 0,
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.cyan,
                  alignment: Alignment.center,
                  child: const Text(
                    "텍스트",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isAnimated = !isAnimated;
                  });
                },
                child: const Text("Click!"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

import 'package:flutter/material.dart';
import 'package:histudy/pages/animated_align_page.dart';
import 'package:histudy/pages/animated_container_page.dart';
import 'package:histudy/pages/animated_cross_fade_page.dart';
import 'package:histudy/pages/animated_default_textstyle_page.dart';
import 'package:histudy/pages/animated_list_page.dart';
import 'package:histudy/pages/animated_opacity_page.dart';
import 'package:histudy/pages/animated_positioned_page.dart';
import 'package:histudy/pages/animated_switcher_page.dart';
import 'package:histudy/pages/hero_page.dart';
import 'package:histudy/pages/main_page.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "main",
      pageBuilder: (context, state) => const NoTransitionPage(
        child: MainPage(),
      ),
    ),
    GoRoute(
      path: "/animatedTextstyle",
      name: "animatedTextstyle",
      //! 아무런 효과가 없는 일반적은 페이지 전환.
      pageBuilder: (context, state) => const NoTransitionPage(
        child: AnimatedDefaultTextstylePage(),
      ),
    ),
    GoRoute(
      path: "/animatedContainer",
      name: "animatedContainer",
      //! 페이지가 천천히 사라지면서 전환되는 효과.
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedContainerPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),

    GoRoute(
      path: "/animatedOpacity",
      name: "animatedOpacity",
      //! 페이지가 왼쪽에서 오른쪽으로 이동되면서 전환 (전환 방향 및 속도 조절가능)
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedOpacityPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offserAnimation = animation.drive(tween);

          return SlideTransition(
            position: offserAnimation,
            child: child,
          );
        },
      ),
    ),

    GoRoute(
      path: "/animatedPositioned",
      name: "animatedPositioned",
      //! 페이지가 가운데로 작아지면서 사라지고 새로운 페이지가 커지면서 나타나며 전환.
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedPositionedPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: "/animatedAlign",
      name: "animatedAlign",
      //! 페이지가 돌아가면서 전환  --페이지 전환은 라우터에서
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedAlignPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return RotationTransition(//회전하면서 페이지 바뀜
            turns: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: "/animatedCrossFade",
      name: "animatedCrossFade",
      //! 페이지가 지정한 위치로 작아지면서 사라지고 새로운 페이지가 커지면서 나타나며 전환.
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedCrossFadePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
            scale: animation,
            alignment: Alignment.topLeft,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: "/animatedSwitcher",
      name: "animatedSwitcher",
      //! 반시계방향으로 회전하면서 페이지 전환
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const AnimatedSwitcherPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var turnsTween = Tween(begin: 0.0, end: -1.0);
          var turnsAnimation = animation.drive(turnsTween);

          return RotationTransition(
            turns: turnsAnimation,
            child: child,
          );
        },
      ),
    ),
    //! 리스트 아이템 추가,삭제할때 애니메이션 효과
    GoRoute(
      path: "/animatedList",
      name: "animatedList",
      pageBuilder: (context, state) => const NoTransitionPage(
        child: AnimatedListPage(),
      ),
    ),
    //! 다른페이지로 넘어갈때(두 페이지간의) 해당 위젯 애니메이션 효과
    GoRoute(
      path: "/hero",
      name: "hero",
      builder: (context, state) => const HeroPage(),
    ),
  ],
);
// // final vs const : 시점 차이 const 가 먼저 결정된다.
// //const : 컴파일시 앱 구동되기 직전에 값이 결정되야함 - 리스트값, 스트링값 값이 바로 결정
// //final :  그 후에 결정될 수 있다 - 앱 구동후 화면전환 - 고 라우터 패키지 가져와서 한다

