import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eve9(),
    );
  }
}

class Eve9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Drawer 열기
            },
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        // 슬라이드 메뉴 추가
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white, // 백그라운드 색상
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/9eve_image1.jpg'), // 유저의 프로필 이미지 경로
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ashfak Sayem',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('My Profile', style: TextStyle(color: Colors.black)),
              onTap: () {
                // My Profile로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.black),
              title: Text('Message', style: TextStyle(color: Colors.black)),
              trailing: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('3', style: TextStyle(color: Colors.white)),
              ),
              onTap: () {
                // Message로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.black),
              title: Text('Calendar', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Calendar로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark, color: Colors.black),
              title: Text('Bookmark', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Bookmark로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.black),
              title: Text('Contact Us', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Contact Us로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Settings로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.black),
              title:
                  Text('Helps & FAQs', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Helps & FAQs로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black),
              title: Text('Sign Out', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Sign Out 기능
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Upgrade Pro로 이동
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upgrade, color: Colors.white),
                    SizedBox(width: 10),
                    Text('Upgrade Pro', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // 기존 코드 유지
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
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
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
