import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            'Go to Second Screen',
            style: TextStyle(fontSize: 24),  // style 속성은 Text 위젯 안에 있어야 합니다.
          ),
        ),
      ),
    );
  }
}
