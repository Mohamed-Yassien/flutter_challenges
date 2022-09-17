import 'package:flutter/material.dart';
import 'package:flutter_challenges/expansion_tile.dart';

import 'bottom_sheet_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpansionTileScreen(),
    );
  }
}
