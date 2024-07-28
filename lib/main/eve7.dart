import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verification Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Eve7(),

    );
  }
}

class Eve7 extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<Eve7> {
  final _focusNodes = List<FocusNode>.generate(4, (index) => FocusNode());
  final _controllers = List<TextEditingController>.generate(
      4, (index) => TextEditingController());

  Timer? _timer; // Timer 변수를 null 허용으로 변경
  int _remainingTime = 180;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }

  String get _formattedTime {
    int minutes = _remainingTime ~/ 60;
    int seconds = _remainingTime % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // 뒤로가기 버튼 눌렀을 때 동작
            context.go("/eve8");
          },
        ),
        elevation: 0, // AppBar의 그림자 제거
        backgroundColor: Colors.transparent, // AppBar의 배경을 투명하게 설정
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10), // 여백 줄이기
            Text(
              'Verification',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: 'We\'ve send you the verification\n', // 첫 번째 줄 텍스트
                style: TextStyle(fontSize: 16, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'code on +1 2620 0323 7631', // 두 번째 줄 텍스트
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10), // 여백 줄이기
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List<Widget>.generate(4, (index) {
                return _buildVerificationCodeBox(index);
              }),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  //버튼
                  //샘플 버튼
                  SizedBox(height: 16.0),
                  SizedBox(
                    width: 285.0,
                    height: 60,
                    child: Stack(
                      children: [
                        ElevatedButton(
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
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'CONTINUE',
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

                  SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: 'Re-send code in: ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black, // 기본 텍스트 색상
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: _formattedTime,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(86, 105, 255, 1), // 타이머 텍스트 색상
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationCodeBox(int index) {
    return Container(
      width: 60,
      height: 60,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1 && index < 3) {
            FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
          }
        },
      ),
    );
  }
}
