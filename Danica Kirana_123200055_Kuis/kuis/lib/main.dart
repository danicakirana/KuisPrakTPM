import 'package:flutter/material.dart';
import 'package:kuis/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danica Kirana_123200055',
      home: HomePage(),
    debugShowCheckedModeBanner: false,
    );
  }
}
