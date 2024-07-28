import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventHub',
      home: Eve6(),

    );
  }
}

class Eve6 extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<Eve6> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
      child : AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/eve5");
            // Add navigation logic here
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0.0, bottom: 25.0), // 위쪽 여백을 조정하여 'Sign up' 텍스트를 위로 올림
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 28.0, // 크기 수정 (디자인에 맞춤)
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center( // 나머지 위젯을 가운데 정렬
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60.0, // TextField 높이 조정
                      child: TextField(
                        controller: _fullNameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline),
                          labelText: 'Full name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),


                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(color: Colors.grey.shade300), // 비활성화 상태의 테두리 색상
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 35.0), // 텍스트 필드 내부 패딩 조정
                        ),

                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 60.0, // TextField 높이 조정
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          labelText: 'abc@email.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(color: Colors.grey.shade300), // 비활성화 상태의 테두리 색상
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 35.0), // 텍스트 필드 내부 패딩 조정
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 60.0, // TextField 높이 조정
                      child: TextField(
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
                            borderSide: BorderSide(color: Colors.grey.shade300), // 비활성화 상태의 테두리 색상
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical:35.0), // 텍스트 필드 내부 패딩 조정
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 60.0, // TextField 높이 조정
                      child: TextField(
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: Icon(Icons.visibility_off_outlined),
                          labelText: 'Confirm password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9.0),
                            borderSide: BorderSide(color: Colors.grey.shade300), // 비활성화 상태의 테두리 색상
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 35.0), // 텍스트 필드 내부 패딩 조정
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      width: 285.0,
                      height: 60,
                      child: Stack(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add sign-up logic here
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
                                'SIGN UP',
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
                    SizedBox(height: 30.0),

                    Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 18.0, // 텍스트 크기 조정
                        color: Colors.grey.shade600, // 옅은 회색으로 변경
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add Google sign-in logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 55.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/eve5_icon2.png',
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
                        padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 2.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.grey.shade300),

                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 44.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/eve5_icon3.png',
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
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  "),
                        GestureDetector(
                          onTap: () {
                            context.go("/eve5");
                          },
                          child: Text(
                            'Signin',
                            style: TextStyle(color: Color.fromRGBO(86, 105, 255, 1)),
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

    );
  }
}
