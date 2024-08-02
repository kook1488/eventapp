import 'package:flutter/material.dart'; // 이 줄을 추가하세요.

class Eve9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eve9 Page'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_image.jpg'), // 유저의 프로필 이미지
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ashfak Sayem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Profile'),
              onTap: () {
                // My Profile로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Massage'),
              trailing: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('3', style: TextStyle(color: Colors.white)),
              ),
              onTap: () {
                // Massage로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Calendar'),
              onTap: () {
                // Calendar로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Bookmark'),
              onTap: () {
                // Bookmark로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Contact Us'),
              onTap: () {
                // Contact Us로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Settings로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Helps & FAQs'),
              onTap: () {
                // Helps & FAQs로 이동
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sign Out'),
              onTap: () {
                // Sign Out 기능
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan, // 수정: primary -> backgroundColor
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Upgrade Pro로 이동
                },
                child: Text('Upgrade Pro'),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'New York, USA',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Upcoming Events',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            // 이벤트 리스트 섹션
            // 첫 번째 이미지와 유사하게 구성
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  EventCard(
                    date: '10 JUNE',
                    title: 'International Band Music',
                    location: '36 Guild Street London, UK',
                    going: '+20 Going',
                    image: 'assets/event_image1.jpg',
                  ),
                  EventCard(
                    date: '10 JUNE',
                    title: 'Jo Malone London’s Mother’s Day Event',
                    location: 'Radius Gallery London, UK',
                    going: '+8 Going',
                    image: 'assets/event_image2.jpg',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InviteBanner(),
            // 두 번째 이미지에 해당하는 섹션
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String date;
  final String title;
  final String location;
  final String going;
  final String image;

  EventCard({
    required this.date,
    required this.title,
    required this.location,
    required this.going,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image), // 이벤트 이미지
          Text(date),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.location_on, size: 14),
              Text(location),
            ],
          ),
          Text(going),
        ],
      ),
    );
  }
}

class InviteBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Invite your friends',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('Get \$20 for ticket'),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('INVITE'),
          ),
        ],
      ),
    );
  }
}
