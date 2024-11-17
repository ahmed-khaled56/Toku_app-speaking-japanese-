import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:speaking_jpanes/comonents/models.dart';

class numberCategory extends StatelessWidget {
  final Number number;
  const numberCategory({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xfff9952f),
      child: Row(children: [
        Container(
          color: const Color(0xfffff4db),
          child: Image.asset(number.image),
        ),
        const Spacer(
          flex: 1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.jpName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              number.enName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 20,
        ),
        IconButton(
            onPressed: () async {
              final player = AudioPlayer();
              try {
                await player.play(AssetSource(number.sound));
              } catch (e) {
                print('the exception is: $e');
              }
            },
            splashColor: Colors.black,
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            )),
        const Spacer(
          flex: 1,
        ),
      ]),
    );
  }
}
