import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageStackPage(),
    );
  }
}

class ImageStackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // 1. 맨 밑에 이미지
            Positioned.fill(
              child: Image.asset(
                'assets/images/2eve_image1.png', // 배경 이미지 경로
                fit: BoxFit.cover,
              ),
            ),
            // 2. 중간 이미지
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/2eve_image2.png', // 중간 이미지 경로
                fit: BoxFit.cover,
              ),
            ),
            // 3. 상단 이미지
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/2eve_image3.png', // 상단 이미지 경로
                fit: BoxFit.cover,
              ),
            ),
            // 4. 하단 Row 부분
            Positioned(
              bottom: 50,
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
      ),
    );
  }
}
