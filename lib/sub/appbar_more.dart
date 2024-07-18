import 'package:flutter/material.dart';
import 'package:wordapp/sub/styles.dart';
import 'package:go_router/go_router.dart';

class AppbarMore extends StatelessWidget {
  const AppbarMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      child: Row(

        children: [

          // GestureDetector를 추가하여 뒤로가기 기능을 구현
          GestureDetector(
          onTap: (){
            if (context.canPop()) {
              context.pop();
             }
            },
          child: Container(
            margin: EdgeInsets.only(left: 24, top: 3),
            child:
              Icon(
                Icons.arrow_back,
                size: 26,
          ),
          ),
          ),

          SizedBox(width: 12),

          Container(

            margin: EdgeInsets.only(top: 3), // top: 53 - 50

             // 아이콘과 텍스트 사이의 간격을 설정
             child: Text(
            'Events',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,), // 텍스트 스타일 설정
          ),

          ),


          Spacer(),

          Container(
          margin: EdgeInsets.only(right: 24),
          child: Image.asset(
            'assets/images/More.png', // 업로드한 이미지를 사용
            width: 24, // 이미지의 너비 설정
            height: 24, // 이미지의 높이 설정
          ),
          ),



        ],
      ),
    );
  }
}
// 이거로 에로우백 감싸야 뒤로가기가 고라우터로 가능하다
// GestureDetector(
// onTap: (){
// if (context.canPop()) {
// context.pop();
// }
// },
// child: Container(
// margin: EdgeInsets.only(left: 24, top: 3),
// child:
// Icon(
// Icons.arrow_back,
// size: 26,
// ),
// ),
// ),
