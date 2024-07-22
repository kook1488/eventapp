//샘플 버튼
 SizedBox
  (height: 16.0),
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

)
,
]
,
)
,
)
,