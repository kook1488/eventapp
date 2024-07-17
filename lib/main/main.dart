import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            top: -80,
            left: -50,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.5), // 더 진하게 하기 위해 색상 및 투명도 조정
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/images/eve1/1eve_image2.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Image.asset(
              'assets/images/eve1/1eve_image3.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
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
