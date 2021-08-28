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

  static AudioCache player = AudioCache();
  final cache = AudioCache();
  Future currentPlayer;

  // void toggleSound(String label) {
  //   String fileName = fileNameCheck(label);
  //
  //   player.loop(fileName);
  //   isPlayed = true;
  //
  //   setState(() {
  //     activeIcon = Icons.pause;
  //   });
  // }

  // void toggleSound(String label) async {
  //   String fileName = fileNameCheck(label);
  //
  //   //if (player == null || isPlayed == false) {
  //   if (isPlayed == false) {
  //     currentPlayer = player.loop(fileName);
  //     setState(() {
  //       activeIcon = Icons.pause;
  //     });
  //     isPlayed = true;
  //   } else {
  //     //player.stop();
  //     //player.clear(fileName);
  //
  //     isPlayed = false;
  //     setState(() {
  //       activeIcon = Icons.play_arrow;
  //     });
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: IconButton(
  //       icon: Icon(
  //         activeIcon,
  //         size: 60.0,
  //       ),
  //       onPressed: () {
  //         //toggleSound(widget.label);
  //         toggleSound(widget.label);
  //       },
  //     ),
  //   );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Slider(
          value: 0.5,
        ),
        IconButton(
          icon: Icon(
            activeIcon,
            size: 60.0,
          ),
          onPressed: () => {
            setState: () {
              AudioPlayer currentTrack = player.loop(widget.fileName);
              isPlayed = true;
              activeIcon = Icons.pause;
            }
          },
        ),
      ],
    );
  }
}
