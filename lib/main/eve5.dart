import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eve5(),
    );
  }
}

class Eve5 extends StatefulWidget {
  @override
  _Eve5State createState() => _Eve5State();
}

class _Eve5State extends State<Eve5> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //  배경 설정
          Positioned(
            top: 520,
            left: 160,
            child: Image.asset(
              'assets/images/1eve_image2.png',
              width: 300,
              height: 370,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 640,
            right: 0,
            child: Image.asset(
              'assets/images/1eve_image3.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 670,
            right: 220,
            child: Image.asset(
              'assets/images/5eve_image3.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 340,
            right: 0,
            child: Image.asset(
              'assets/images/5eve_image2.png',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: 0,
            right: 211,
            child: Image.asset(
              'assets/images/1eve_image4.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

 // 본문 시작
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40.0),
                  Image.asset(
                    'assets/icons/eve5_icon1.png', // Add your logo asset here
                    height: 90,
                  ),
                  SizedBox(height: 0.0),
                  Text(
                    'EventHub',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 35.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 280.0), // 왼쪽 여백 추가
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'abc@email.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: BorderSide(color: Colors.grey.shade400), // 비활성화 상태의 테두리 색상
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      labelText: 'Your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0),
                        borderSide: BorderSide(color: Colors.grey.shade400), // 비활성화 상태의 테두리 색상
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.7, // Switch 크기 조절
                            child: Switch(
                              value: _rememberMe,
                              onChanged: (bool value) {
                                setState(() {
                                  _rememberMe = value;
                                });
                              },
                              activeTrackColor: Color.fromRGBO(86, 105, 255, 1), // 활성화 트랙 색상
                              inactiveTrackColor: Colors.grey,
                            ),
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              fontSize: 16.0, // 글꼴 크기 조정
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          context.go("/eve8");
                          // Add forgot password logic here
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(
                    width: 285.0,
                    height: 60,
                    child: Stack(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            context.go("/eve10");
                            // Add sign-in logic here
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            backgroundColor: Color.fromRGBO(86, 105, 255, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 18.0, // 크기 키우기
                                color: Colors.white, // 흰색으로 변경
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 9.0, // 아이콘을 오른쪽에 배치
                          top: 9.0,
                          child: Image.asset(
                            'assets/images/5eve_image1.png', // 커스텀 아이콘 추가
                            height: 45.0,
                            width: 45.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 18.0, // 텍스트 크기 조정
                      color: Colors.grey.shade600, // 옅은 회색으로 변경
                    ),
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add Google sign-in logic here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, // 내부 패딩을 제거합니다
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      backgroundColor: Colors.white, // 배경색을 흰색으로 설정합니다
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 55.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/eve5_icon2.png', // Google 아이콘 추가
                            height: 24.0,
                            width: 24.0,
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 23.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add Facebook sign-in logic here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),// 내부 패딩을 제거합니다
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      backgroundColor: Colors.white, // 배경색을 흰색으로 설정합니다
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 44.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // 내용물에 맞게 최소화합니다
                        children: [
                          Image.asset(
                            'assets/icons/eve5_icon3.png', // Facebook 아이콘 추가
                            height: 50.0,
                            width: 28.0,
                          ),
                          SizedBox(width: 15.0),
                          Text(
                            'Login with Facebook',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?  "),
                      GestureDetector(
                        onTap: () {
                          context.go("/eve6");
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(color: Color.fromRGBO(86, 105, 255, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
