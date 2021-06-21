import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SoundCard('Rain', WeatherIcons.wi_showers),
                ),
                Expanded(
                  child:
                      SoundCard('Thunderstorm', WeatherIcons.wi_storm_showers),
                ),
              ],
            ),
            /*Row(
              children: [
                Expanded(
                  child: SoundCard('Snow', WeatherIcons.wi_snow),
                ),
                Expanded(
                  child: SoundCard('Wind', WeatherIcons.wi_cloudy_windy),
                ),
              ],
            ),*/
            Row(
              children: [
                Expanded(
                  child: SoundCard('Thunderstorm', Icons.favorite),
                ),
                Expanded(
                  child: SoundCard('Wind', Icons.beach_access),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
