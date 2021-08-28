import 'package:flutter/material.dart';
import 'sound_card_player.dart';

String fileNameCheck(String label) {
  String fileName;

  switch (label) {
    case 'Rain':
      fileName = 'rain.wav';
      break;
    case 'Thunderstorm':
      fileName = 'rain-thunder.wav';
      break;
    case 'Snow':
      fileName = 'snow.wav';
      break;
    case 'Wind':
      fileName = 'wind.wav';
      break;
    case 'Waves':
      fileName = 'waves.wav';
      break;
  }
  return fileName;
}

class SoundCard extends StatefulWidget {
  SoundCard(this.label, this.cardIcon);

  final IconData cardIcon;
  final String label;

  @override
  _SoundCardState createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.amber,
      ),
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.cardIcon,
                size: 80.0,
              ),
              SoundCardPlayer(fileNameCheck(widget.label)),
            ],
          ),
        ],
      ),
    );
  }
}
