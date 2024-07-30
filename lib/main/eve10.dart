import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eve10(),
    );
  }
}

class Eve10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 투명한 앱바
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu), // 아이콘 찾기
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), // 아이콘 표시 찾기
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // 상단 배경
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(74, 67, 236, 1),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20), // 상태바 여백
                  Text(
                    'Current Location',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'New York, USA',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // 필터 색깔
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 67, 236, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search...', // 색깔 바꾸기
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                        Icon(Icons.filter_list, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 카테고리 버튼
            Positioned(
              top: 180, // 적절한 위치로 조정
              left: 0,
              right: 0,
              child: SingleChildScrollView( // SingleChildScrollView로 감싸기
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    SizedBox(width: 28),
                    ElevatedButton.icon( // 아이콘이 추가된 ElevatedButton
                      icon: Icon(Icons.sports_basketball_sharp, color: Colors.white),
                      label: Text('Sports', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                      onPressed: () {},
                    ),

                    SizedBox(width: 13), // 버튼 간격 추가
                    ElevatedButton.icon( // 아이콘이 추가된 ElevatedButton
                      icon: Icon(CupertinoIcons.music_note_2, color: Colors.white),
                      label: Text('Music', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                      onPressed: () {},

                    ),

                    SizedBox(width: 13), // 버튼 간격 추가
                    ElevatedButton.icon( // 아이콘이 추가된 ElevatedButton
                      icon: Icon(Icons.construction_outlined, color: Colors.white),
                      label: Text('Food', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF29D697),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22),
                      ),
                      onPressed: () {},

                    ),
                    SizedBox(width: 13), // 버튼 간격 추가
                    ElevatedButton.icon( // 아이콘이 추가된 ElevatedButton
                      icon: Icon(Icons.local_movies_rounded, color: Colors.white),
                      label: Text('Movie', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      ),
                      onPressed: () {},

                    ),
                  ],
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 250), // 카테고리 버튼 아래에 공간 추가
                // Upcoming Events 섹션
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text('See All', style: TextStyle(color: Colors.grey)),
                          Icon(Icons.arrow_right, color: Colors.grey), // 아이콘 추가
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // 이벤트 카드 리스트
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [

                      EventCard(),
                      SizedBox(width: 16),
                      EventCard(),
                    ],
                  ),
                ),
                // 하단 초대 섹션
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 127,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(74, 67, 236, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [

                        Icon(Icons.card_giftcard, color: Colors.white, size: 40),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Invite your friends',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Get \$20 for ticket',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 30.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, // 수정된 부분
                              foregroundColor: Colors.blue, // 텍스트 색상
                            ),
                            child: Text('INVITE'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70, // 원하는 높이로 설정
        color: Colors.green, // 색상을 회색으로 설정
        child: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(86, 105, 255, 1), // 선택된 아이템 색상
          unselectedItemColor: Colors.white, // 선택되지 않은 아이템 색상
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

// 카드안 수정하기 카드 전체를 옆으로 늘렸어야 했다.
class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 이벤트 카드 클릭 시 수행할 동작
      },
      child: Container(
        width: 237,
        height: 280, // 카드의 전체 높이 조정
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            // 배경 이미지
          Positioned(
          left: 8.0, // 약간 오른쪽으로 이동
          top: 8.0, // 약간 아래쪽으로 이동
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/event_image1.png',
                width: 220,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
            // 날짜 정보와 북마크 아이콘
            Positioned(
              top: 17,
              left: 17,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      '10',
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'JUNE',
                      style: TextStyle(color: Colors.red),
                    ),

                  ],
                ),
              ),
            ),

            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.bookmark_outlined, color: Colors.red, size: 20),
              ),
            ),
            // 제목 및 정보
            Positioned(
              top: 145,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'International Band Mu...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                        radius: 15,
                      ),
                      SizedBox(width: 5),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                        radius: 15,
                      ),
                      SizedBox(width: 5),
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                        radius: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '+20 Going',
                        style: TextStyle(
                          color: Color.fromRGBO(63, 56, 221, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        '36 Guild Street London, UK',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
