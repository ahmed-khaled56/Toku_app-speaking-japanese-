import 'package:flutter/material.dart';
import 'package:speaking_jpanes/comonents/itemsOfColorsScreen.dart';
import 'package:speaking_jpanes/comonents/models.dart';

class ColorsPage extends StatelessWidget {
  final List<colors> color = const [
    colors(
      enName: 'dusty yellow',
      jpName: 'Koikiiro',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    colors(
      enName: 'black',
      jpName: 'Kuro',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    colors(
      enName: 'brown',
      jpName: 'Chairo',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    colors(
      enName: 'gray',
      jpName: 'Haiiro',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    colors(
      enName: 'green',
      jpName: 'Midori',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    colors(
      enName: 'red',
      jpName: 'Aka',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    colors(
      enName: 'white',
      jpName: 'Shiro',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    colors(
      enName: 'yellow',
      jpName: 'Kiiro',
      image: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return colorsCategory(
            colorsObj: color[index],
          );
        },
      ),
    );
  }
}
