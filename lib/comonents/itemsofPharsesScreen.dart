import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speaking_jpanes/comonents/models.dart';

class phrasesCategory extends StatelessWidget {
  final Phrases phraseObj;
  const phrasesCategory({
    super.key,
    required this.phraseObj,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color(0xff47a5cb),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phraseObj.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                phraseObj.enName,
                style: const TextStyle(
                  color: Colors.purple,
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
                  await player.play(AssetSource(phraseObj.sound));
                } catch (e) {
                  print('the exception is: $e');
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
