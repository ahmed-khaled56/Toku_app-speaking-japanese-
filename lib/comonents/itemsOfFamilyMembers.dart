import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:speaking_jpanes/comonents/models.dart';

class familymemberCategory extends StatelessWidget {
  final familyMember family_member;

  const familymemberCategory({super.key, required this.family_member});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.green,
      child: Row(
        children: [
          Container(
              width: 100,
              height: 100,
              color: const Color(0xfffff4db),
              child: Image(image: AssetImage(family_member.image))),
          const Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                family_member.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                family_member.enName,
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
                  await player.play(AssetSource(family_member.sound));
                } catch (e) {
                  print('the exception is: $e');
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
