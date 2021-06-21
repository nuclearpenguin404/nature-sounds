import 'package:flutter/material.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'sound_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature sounds'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SoundCard('Rain', Meteocons.rain),
            SoundCard('Thunderstorm', Meteocons.clouds_flash),
            SoundCard('Snow', Meteocons.snow_heavy),
            SoundCard('Wind', Meteocons.wind),
            SoundCard('Wind', Icons.access_alarm),
          ],
        ),
      ),
    );
  }
}
