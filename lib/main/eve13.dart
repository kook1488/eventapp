import 'package:flutter/material.dart';
import 'package:wordapp/sub/appbar_eve13.dart';
import 'dart:ui'; // 블러 효과를 추가하기 위해 필요

void main() {
  runApp(MyApp());
}

// MyApp 클래스는 애플리케이션의 루트 위젯입니다.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eve13(), // EventsListScreen을 메인 화면으로 설정
    );
  }
}

// EventsListScreen 클래스는 이벤트 리스트를 보여주는 화면입니다.

class Eve13 extends StatelessWidget {
  final List<Event> events = [
    Event(
      date: 'Wed, Apr 28 • 5:30 PM',
      title: 'Jo Malone London’s Mother’s Day Presents',
      location: 'Radius Gallery • Santa Cruz, CA',
      imagePath: 'assets/images/event_image1.png',
    ),
    Event(
      date: 'Sat, May 1 • 2:00 PM',
      title: 'A Virtual Evening of Smooth Jazz',
      location: 'Lot 13 • Oakland, CA',
      imagePath: 'assets/images/event_image2.png',
    ),
    Event(
      date: 'Sat, Apr 24 • 1:30 PM',
      title: "Women's Leadership Conference 2021",
      location: '53 Bush St • San Francisco, CA',
      imagePath: 'assets/images/event_image3.png',
    ),
    Event(
      date: 'Fri, Apr 23 • 6:00 PM',
      title: 'International Kids Safe Parents Night Out',
      location: 'Lot 13 • Oakland, CA',
      imagePath: 'assets/images/event_image4.png',
    ),
    Event(
      date: 'Mon, Jun 21 • 10:00 PM',
      title: 'Collectivity Plays the Music of Jimi',
      location: 'Longboard Margarita Bar',
      imagePath: 'assets/images/event_image5.png',
    ),
    Event(
      date: 'Sun, Apr 25 • 10:15 AM',
      title: 'International Gala Music Festival',
      location: '36 Guild Street London, UK',
      imagePath: 'assets/images/event_image6.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 전체 배경을 흰색으로 설정
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Appbar_eve13(), // AppbarMore 위젯을 AppBar의 title로 사용
        toolbarHeight: 50,
      ),
      // ListView.builder를 사용하여 이벤트 목록을 동적으로 생성
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 24),
              Image.asset('assets/icons/search_blue.png',
                  width: 30, height: 30),
              SizedBox(width: 10),
              // TextField 추가
              Container(
                width: 140, // 원하는 너비로 설정
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ' Search...',
                    hintStyle: TextStyle(
                      fontSize: 27, // 힌트 텍스트 크기 설정
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w300,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 10), // 패딩 설정
                  ),
                ),
              ),
              SizedBox(width: 82),
              Stack(
                children: [
                  Container(
                    width: 85, // 너비를 조정할 수 있습니다.
                    height: 34, // 높이를 조정할 수 있습니다.
                    decoration: BoxDecoration(
                      color: Color(0xFF5669FF), // 사각형의 색상
                      borderRadius: BorderRadius.circular(30), // 둥근 모서리 반경
                    ),

                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Row(
                        // Container 안에 Row 추가
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/filter.png',
                              width: 27, height: 27),
                          // 추가할 이미지
                          SizedBox(width: 5), // 이미지와 텍스트 사이의 간격
                          Text(
                            'Filters', // 여기에 원하는 텍스트 입력
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white, // 텍스트 색상을 흰색으로 설정
                              // 텍스트 배경을 반투명 검정색으로 설정
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 8.0),
                  child: Card(
                    // 이벤트 카드를 Card 위젯으로 래핑
                    color: Colors.transparent, // 카드의 배경을 투명으로 설정
                    margin: EdgeInsets.zero,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 5),
                        // 블러 효과 적용
                        child: Container(
                          // 고정된 높이를 설정하기 위해 Container 사용
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            // 카드의 배경을 흰색으로 설정
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 110, // 원하는 높이로 설정
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                event.imagePath.isNotEmpty
                                    ? Container(
                                        width: 79,
                                        height: 92, // 이미지 높이를 92로 설정
                                        child: Image.asset(event.imagePath,
                                            fit: BoxFit.cover),
                                      )
                                    : Container(
                                        width: 79,
                                        height: 92,
                                        color: Colors.grey,
                                      ), // 이미지가 없는 경우 대체
                                SizedBox(width: 16), // 이미지와 텍스트 사이의 간격
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // 날짜가 제목 위에 오도록 변경
                                      Text(event.date,
                                          style: TextStyle(
                                              color: Color(0xFF5669FF),
                                              fontSize: 12)),
                                      // 날짜를 #5669FF로 설정
                                      SizedBox(height: 4),
                                      // 제목과 날짜 사이의 간격 추가
                                      Text(event.title,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      // 제목의 폰트 크기를 16으로 설정하고 굵은 글씨로 표시
                                      SizedBox(height: 8),
                                      // 제목과 위치 정보 사이의 간격 추가
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,
                                              size: 18,
                                              color: Colors.grey), // 위치 아이콘
                                          SizedBox(width: 4), // 아이콘과 텍스트 사이의 간격
                                          Expanded(
                                            child: Text(
                                              event.location,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                              overflow: TextOverflow
                                                  .ellipsis, // 텍스트가 길면 말줄임표(...)로 표시
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Event 클래스는 각 이벤트의 데이터를 저장합니다.
class Event {
  final String date;
  final String title;
  final String location;
  final String imagePath;

  Event({
    required this.date,
    required this.title,
    required this.location,
    required this.imagePath,
  });
}
