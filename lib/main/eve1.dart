import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';//이거 스샷찍은거처럼 페이지 이동하기
//이미지 크기 조정해서 구형해주기
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventHub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -50,
            left: -50,
            child: Image.asset(
              'assets/images/eve1/1eve_image2.png',
              width: 600,
              height: 600,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Image.asset(
              'assets/images/eve1/1eve_image3.png',
              width: 3,
              height: 3,
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   bottom: 20,
          //   left: 50,
          //   child: Image.asset(
          //     'assets/images/eve1/1eve_image4.png',
          //     width: 1,
          //     height: 1,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Center(
            child: Image.asset(
              'assets/images/1eve_image.png',
              height: 220, // 이미지 높이
              width: 240,  // 이미지 너비
            ),
          ),
        ],
      ),
    );
  }
}
