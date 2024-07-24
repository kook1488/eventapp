import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageStackPage(),
    );
  }
}

class ImageStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. 맨 밑에 이미지
          Positioned(
            top: -40,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/4eve_image1.png', // 배경 이미지 경로
              fit: BoxFit.contain,
              width: 700,
              height: 750,
            ),
          ),
          // 2. 중간 이미지
          Positioned(
            top: 580,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/2eve_image2.png', // 중간 이미지 경로
              fit: BoxFit.cover,
            ),
          ),
          // 3. 상단 이미지
          Positioned(
            top: 630,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/4eve_image2.png', // 상단 이미지 경로
              fit: BoxFit.contain,
              width: 145,
              height: 145, // 크기 감소
            ),
          ),
          // 4. 하단 Row 부분
          Positioned(
            bottom: 37,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/2eve_image41.png', // 첫 번째 이미지 경로
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/2eve_image42.png', // 두 번째 이미지 경로
                    width: 50,
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/2eve_image43.png', // 세 번째 이미지 경로
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
