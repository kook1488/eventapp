import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Eve1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          context.go('/eve2'); // 페이지 이동
        },
        child: Stack(
          children: [
            Positioned(
              top: 520,
              left: 160,
              child: Image.asset(
                'assets/images/1eve_image2.png',
                width: 300,
                height: 370,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 640,
              right: 0,
              child: Image.asset(
                'assets/images/1eve_image3.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              bottom: 670,
              right: 220,
              child: Image.asset(
                'assets/images/5eve_image3.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),



            Positioned(
              bottom: 340,
              right: 0,
              child: Image.asset(
                'assets/images/5eve_image2.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            Positioned(
              bottom: 0,
              right: 211,
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
      ),
    );
  }
}
