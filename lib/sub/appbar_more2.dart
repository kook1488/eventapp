import 'package:flutter/material.dart';

class AppbarMore2 extends StatelessWidget {
  const AppbarMore2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      child: Row(
        children: [



          Container(
            margin: EdgeInsets.only(left: 24, top: 3),
            child: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
          SizedBox(width: 12),
          Container(
            margin: EdgeInsets.only(top: 3), // top: 53 - 50
            // 아이콘과 텍스트 사이의 간격을 설정
            child: Text(
              'Events',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ), // 텍스트 스타일 설정
            ),
          ),

          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 4),
            child: Image.asset(
              'assets/icons/search.png', // 업로드한 search.png 이미지를 사용
              width: 23, // 이미지의 너비 설정
              height: 23, // 이미지의 높이 설정
            ),
          ),
          SizedBox(width: 12),


          Container(
            margin: EdgeInsets.only(right: 24),
            child: Image.asset(
              'assets/images/More.png', // 기존 More.png 이미지를 사용
              width: 24, // 이미지의 너비 설정
              height: 24, // 이미지의 높이 설정
            ),
          ),
        ],
      ),
    );
  }
}
