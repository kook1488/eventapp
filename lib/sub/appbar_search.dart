import 'package:flutter/material.dart';

class AppbarSearch extends StatelessWidget {
  const AppbarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      child: Row(

        children: [
          Container(
            margin: EdgeInsets.only(left: 8, top: 3),
            child:
            Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),

          SizedBox(width: 12),

          Container(

            margin: EdgeInsets.only(top: 3), // top: 53 - 50

            // 아이콘과 텍스트 사이의 간격을 설정
            child: Text(
              'Search',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,), // 텍스트 스타일 설정
            ),

          ),





        ],
      ),
    );
  }
}
