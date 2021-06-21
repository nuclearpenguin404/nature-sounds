import 'package:flutter/material.dart';

class SoundCard extends StatelessWidget {
  SoundCard(this.label, this.cardIcon);

  final IconData cardIcon;
  final String label;

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
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Icon(
                cardIcon,
                size: 80.0,
              ),
              Slider(
                value: 0.5,
              ),
              Icon(
                Icons.play_arrow_rounded,
                size: 60.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
