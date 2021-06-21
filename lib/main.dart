import 'package:flutter/material.dart';
import 'home_page.dart';
import 'sound_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nature Sounds',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
