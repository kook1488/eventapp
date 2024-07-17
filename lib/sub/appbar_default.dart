import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarDefault extends StatelessWidget {
  const AppbarDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        'AppbarDefault is working',
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}
