import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//그림이 확대되서 들어가는 문제
//얼굴그림 3개가 스택으로 안쌓이는 문제
// 하단 초대 섹션 그림이 짤리는문제 249

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
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
                  SizedBox(height: 20),
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
                              hintText: 'Search...',
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
              top: 180,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 28),
                    ElevatedButton.icon(
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
                    SizedBox(width: 13),
                    ElevatedButton.icon(
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
                    SizedBox(width: 13),
                    ElevatedButton.icon(
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
                    SizedBox(width: 13),
                    ElevatedButton.icon(
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
                SizedBox(height: 250),
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
                          Icon(Icons.arrow_right, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      EventCard(
                        imagePath: 'assets/images/event_image1.png',
                        date: '10',
                        month: 'JUNE',
                        title: 'International Band Mu...',
                        location: '36 Guild Street London, UK',
                        attendees: [
                          'assets/icons/10eve_14.png',
                          'assets/icons/10eve_15.png',
                          'assets/icons/10eve_16.png'
                        ],
                        goingCount: '+20 Going',
                      ),

                      SizedBox(width: 16),
                      EventCard(
                        imagePath: 'assets/images/event_image5.png', // 새로운 이미지 경로
                        date: '10',
                        month: 'JUNE',
                        title: "Jo malone london's...",
                        location: 'Radius Gallery • Santa Cruz, CA',
                        attendees: [
                          'assets/icons/10eve_14.png', // 새로운 참석자 이미지 경로
                          'assets/icons/10eve_15.png',
                          'assets/icons/10eve_16.png'
                        ],
                        goingCount: '+20 Going',
                      ),

                      SizedBox(width: 16),
                      EventCard(
                        imagePath: 'assets/images/event_image6.png', // 새로운 이미지 경로
                        date: '10',
                        month: 'JUNE',
                        title: "International gala...",
                        location: 'Radius Gallery • Santa Cruz, CA',
                        attendees: [
                          'assets/icons/10eve_14.png', // 새로운 참석자 이미지 경로
                          'assets/icons/10eve_15.png',
                          'assets/icons/10eve_16.png'
                        ],
                        goingCount: '+15 Going',
                      ),

                      SizedBox(width: 16),
                      EventCard(
                        imagePath: 'assets/images/event_image3.png', // 새로운 이미지 경로
                        date: '10',
                        month: 'JUNE',
                        title: "Women's leadership...",
                        location: 'Radius Gallery • Santa Cruz, CA',
                        attendees: [
                          'assets/icons/10eve_14.png', // 새로운 참석자 이미지 경로
                          'assets/icons/10eve_15.png',
                          'assets/icons/10eve_16.png'
                        ],
                        goingCount: '+10 Going',
                      ),

                    ],
                  ),
                ),


                // 하단 초대 섹션 그림이 짤리는문제 249
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 248, 255, 0.15), // 수정된 색상
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: -10, // 원하는 위치로 조정
                          top: -120, // 원하는 위치로 조정
                          child: Image.asset(
                            'assets/icons/10eve_7.png',
                            width: 350, // 원하는 넓이로 조정
                            height: 350, // 원하는 높이로 조정
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Invite your friends',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Text(
                                    'Get \$20 for ticket',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 10), // 여백 추가
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(0, 248, 255, 1), // 수정된 부분
                                      foregroundColor: Colors.white, // 텍스트 색상
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8), // borderRadius 줄이기
                                      ),
                                    ),
                                    child: Text('INVITE'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
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
        height: 70,
        color: Colors.green,
        child: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(86, 105, 255, 1),
          unselectedItemColor: Colors.white,
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

class EventCard extends StatelessWidget {
  final String imagePath;
  final String date;
  final String month;
  final String title;
  final String location;
  final List<String> attendees;
  final String goingCount;

  EventCard({
    required this.imagePath,
    required this.date,
    required this.month,
    required this.title,
    required this.location,
    required this.attendees,
    required this.goingCount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 이벤트 카드 클릭 시 수행할 동작
      },
      child: Container(
        width: 270,
        height: 285,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            // 배경 이미지
            Positioned(
              left: 8.0,
              top: 8.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imagePath,
                  width: 250,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 날짜 정보와 북마크 아이콘
            Positioned(
              top: 17,
              left: 17,
              child: Container(
                width: 50,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      month,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 17,
              right: 21,
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
              top: 170,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      for (var attendee in attendees)
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(attendee),
                            radius: 15,
                          ),
                        ),
                      Text(
                        goingCount,
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
                        location,
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
