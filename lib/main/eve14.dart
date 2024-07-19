import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:wordapp/sub/appbar_default.dart';
import 'package:wordapp/sub/appbar_eve14.dart';


void main() {
  runApp(MyApp());
}

//MyApp 클래스는 애플리케이션의 루트 위젯입니다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eve14(), // Eve14을 메인 화면으로 설정
    );
  }
}

// Eve14 클래스 정의
class Eve14 extends StatefulWidget {
  const Eve14({super.key});

  @override
  State<Eve14> createState() => _Event1State();
}

class _Event1State extends State<Eve14> {

  bool activeBtn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: , // AppbarDefault 위젯을 AppBar의 title로 사용
        // ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [

                  const Appbar_eve14(), //앱 바 사용

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        width: 295,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromRGBO(0, 0, 0, 0.0287),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeBtn = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 145,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: !activeBtn
                                      ? Colors.white
                                      : Colors.transparent,
                                ),


                                child: Text("UPCOMING",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                                      color: !activeBtn ? Color(0xFF7974E7): Color.fromRGBO(155, 155, 155, 1) // 텍스트 색상을 선택 상태에 따라 다르게 설정

                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  activeBtn = true;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 110,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: activeBtn
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                                child: Text("PAST EVENTS",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,
                                      color: activeBtn ? Color(0xFF7974E7) : Color.fromRGBO(155, 155, 155, 1) // 텍스트 색상을 선택 상태에 따라 다르게 설정
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // 배경 이미지
                  Padding(
                    padding: const EdgeInsets.only(top: 88.82),
                    child: Image.asset(
                      'assets/images/MaskGroup.png',
                      fit: BoxFit.cover, // 이미지를 화면에 맞게 조정
                    ),
                  ),


                  SizedBox(height: 20), // 이미지와 텍스트 사이의 간격
                  Text(
                    'No Upcoming Event',
                    style: TextStyle(fontSize: 25), // 텍스트 스타일 설정
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Lorem ipsum dolor sit amet,',
                    style: TextStyle(fontSize: 15,color: Colors.grey,),
                    // 텍스트 스타일 설정
                  ),
                  Text(
                    'consectetur',
                    style: TextStyle(fontSize: 15,color: Colors.grey,),
                    // 텍스트 스타일 설정
                  ),
                ],
              ),



              GestureDetector(//라우터로 이동
                onTap: (){
                  context.go("/eve15");
                },

                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group18177.png',
                      fit: BoxFit.cover, // 이미지를 화면에 맞게 조정
                    ),



                    Container(
                      alignment: Alignment.topCenter,
                      height: 30,
                      child:
                      Text(
                        'EXPLORE EVENTS',
                        style: TextStyle(

                          fontSize: 16,
                          color: Colors.white, // 텍스트 색상을 흰색으로 설정
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

