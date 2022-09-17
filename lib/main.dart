import 'package:flutter/material.dart';
import 'package:flutter_challenges/page_view_screen.dart';
import 'package:flutter_challenges/tab_bar_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarScreen(),
    );
  }
}
