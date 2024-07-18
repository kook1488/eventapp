import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordapp/sub/router.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routers,
    );
  }
}
