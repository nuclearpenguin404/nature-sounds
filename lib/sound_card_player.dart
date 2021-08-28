import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundCardPlayer extends StatefulWidget {
  SoundCardPlayer(this.fileName);
  final String fileName;

  @override
  _SoundCardPlayerState createState() => _SoundCardPlayerState();
}

class _SoundCardPlayerState extends State<SoundCardPlayer> {
  IconData activeIcon = Icons.play_arrow_rounded;
  bool isPlayed = false;

  // taken here
  // https://stackoverflow.com/questions/56360083/stop-audio-loop-audioplayers-package

  AudioCache cache = AudioCache();
  AudioPlayer player = AudioPlayer();

  void loopFile(filename) async {
    player = await cache.loop(filename, volume: 0.5);
  }

  void stopFile() {
    player?.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Slider(
          value: 0.5,
          min: 0,
          max: 1,
          onChanged: (double value) {
            setState(() {
              player.setVolume(value);
            });
          },
        ),
        IconButton(
          icon: Icon(
            activeIcon,
            size: 60.0,
          ),
          onPressed: () {
            setState(() {
              if (isPlayed == false) {
                activeIcon = Icons.pause;
                //Future player = cache.loop(widget.fileName, volume: 1.0);
                loopFile(widget.fileName);
                //print(player);
                isPlayed = true;
              } else {
                stopFile();
                activeIcon = Icons.play_arrow_rounded;
                isPlayed = false;
              }
            });
          },
        ),
      ],
    );
  }
}
