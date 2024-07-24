import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui'; // ImageFilter를 사용하기 위해 추가

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
            top: 70,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/3eve_image1.png', // 배경 이미지 경로
              fit: BoxFit.contain,
              width: 520,
              height: 510,
            ),
          ),
          // 흐림 효과를 적용할 부분
          Positioned(
            top: 480,
            left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(//블러처리가 아닌듯...뿌옇게 해야됨
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 0.0),
                child: Container(
                    width: 520,
                    height: 100,
                    color: Colors.grey.withOpacity(0) // 투명 배경
                ),
              ),
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
            top: 620,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/3eve_image2.png', // 상단 이미지 경로
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

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'dart:ui'; // ImageFilter를 사용하기 위해 추가
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ImageStackPage(),
//     );
//   }
// }
//
// class ImageStackPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // 1. 맨 밑에 이미지
//           Positioned(
//             top: 70,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: [
//                 Image.asset(
//                   'assets/images/3eve_image1.png', // 배경 이미지 경로
//                   fit: BoxFit.contain,
//                   width: 520,
//                   height: 510,
//                 ),
//                 ClipRect(
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaX: 500.0, sigmaY: 0),
//                     child: Container(
//                       width: 520,
//                       height: 100,
//                       color: Colors.black12.withOpacity(0),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // 2. 중간 이미지
//           Positioned(
//             top: 580,
//             left: 0,
//             right: 0,
//             child: Image.asset(
//               'assets/images/2eve_image2.png', // 중간 이미지 경로
//               fit: BoxFit.cover,
//             ),
//           ),
//           // 3. 상단 이미지
//           Positioned(
//             top: 620,
//             left: 0,
//             right: 0,
//             child: Image.asset(
//               'assets/images/3eve_image2.png', // 상단 이미지 경로
//               fit: BoxFit.contain,
//               width: 145,
//               height: 145, // 크기 감소
//             ),
//           ),
//           // 4. 하단 Row 부분
//           Positioned(
//             bottom: 37,
//             left: 0,
//             right: 0,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset(
//                     'assets/images/2eve_image41.png', // 첫 번째 이미지 경로
//                     width: 50,
//                     height: 50,
//                   ),
//                   Image.asset(
//                     'assets/images/2eve_image42.png', // 두 번째 이미지 경로
//                     width: 50,
//                     height: 50,
//                   ),
//                   Image.asset(
//                     'assets/images/2eve_image43.png', // 세 번째 이미지 경로
//                     width: 50,
//                     height: 50,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
