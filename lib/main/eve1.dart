import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; //이거 스샷찍은거처럼 페이지 이동하기

//이미지 크기 조정해서 구형해주기
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//위에 디버그 표시 없애기

      home: Eve1(),
    );
  }
}

class Eve1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 455,
            left: 150,
            child: Image.asset(
              'assets/images/1eve_image2.png',
              width: 300,
              height: 370,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 580,
            right: 0,
            child: Image.asset(
              'assets/images/1eve_image3.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 200,
            child: Image.asset(
              'assets/images/1eve_image4.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/1eve_image.png',
              height: 220, // 이미지 높이
              width: 240, // 이미지 너비
            ),
          ),
        ],
      ),
    );
  }
}
