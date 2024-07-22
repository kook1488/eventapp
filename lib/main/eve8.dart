//샌드 옆에 아이콘 위쪽 안보이는거 수정하기

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PasswordResetScreen(),
  ));
}

class PasswordResetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),

            Text(
              'Reset Password', // "Resset Password" -> "Reset Password"
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text.rich(
              TextSpan(
                text: 'please enter your email address to\n', // 첫 번째 줄 텍스트
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'request a password reset', // 두 번째 줄 텍스트
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'abc@email.com',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),

            SizedBox(height: 40.0),

            Center( // Center 위젯으로 감싸서 가로축 가운데 정렬
              child: SizedBox(
                width: 285.0,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Add sign-in logic here
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    backgroundColor: Color.fromRGBO(86, 105, 255, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'SEND',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 9.0, // 아이콘을 오른쪽에 배치
                        top: -15,
                        child: Image.asset(
                          'assets/images/5eve_image1.png', // 커스텀 아이콘 추가
                          height: 42.0,
                          width: 45.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
