import 'package:flutter/material.dart';
import 'package:speaking_jpanes/comonents/itemsofPharsesScreen.dart';
import 'package:speaking_jpanes/comonents/models.dart';

class phrasesPage extends StatelessWidget {
  final List<Phrases> PhrasesList = const [
    Phrases(
      jpName: 'Kimasu ka?',
      enName: 'are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    Phrases(
      jpName: 'Kōdoku suru no o wasurenai de kudasai',
      enName: 'dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Phrases(
      jpName: 'Go kibun wa ikagadesu Ka?',
      enName: 'how are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrases(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrases(
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'i love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Phrases(
      jpName: 'puroguramingu wa jantandesu',
      enName: 'programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrases(
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrases(
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Phrases(
      jpName: 'hai imamukatte imasu',
      enName: 'yes im coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  const phrasesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text(
            'Phrases',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: PhrasesList.length,
          itemBuilder: (context, index) {
            return phrasesCategory(phraseObj: PhrasesList[index]);
          },
        ));
  }
}
