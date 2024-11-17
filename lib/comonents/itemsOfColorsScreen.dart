import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speaking_jpanes/comonents/models.dart';

class colorsCategory extends StatelessWidget {
  final colors colorsObj;
  const colorsCategory({super.key, required this.colorsObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: const Color(0xff7d40a2),
      child: Row(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: Image(image: AssetImage(colorsObj.image))),
          const Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                colorsObj.jpName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                colorsObj.enName,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
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
                  await player.play(AssetSource(colorsObj.sound));
                } catch (e) {
                  print('the exception is: $e');
                }
              },
              splashColor: Colors.black,
              icon: const Icon(
                color: Colors.white,
                Icons.play_arrow,
              )),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
