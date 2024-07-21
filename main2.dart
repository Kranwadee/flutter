// File: main2.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Main2Screen(),
    );
  }
}

class Main2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.grey),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'John Doe S123456789',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildListItem('กิจกรรมด้านเข้าร่วม/รับชม'),
                _buildListItem('กิจกรรมด้านกีฬา/การออกกำลังกาย'),
                _buildListItem('กิจกรรมด้านจิตอาสา'),
                _buildListItem('คะแนนความดีด้านความกตัญญู'),
                _buildListItem('คะแนนความดีด้านการรู้วินัย'),
                _buildListItem('คะแนนความดีด้านการมีใจอาสา'),
                _buildListItem('คะแนนความดีด้านการพัฒนาภาวะผู้นำ'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1, // เปลี่ยนเป็น 3 เพื่อให้ Profile เป็นรายการที่เลือก
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildListItem(String title) {
    return ListTile(
      leading: Icon(Icons.arrow_right, color: Colors.red),
      title: Text(title, style: TextStyle(color: Colors.red)),
    );
  }
}
