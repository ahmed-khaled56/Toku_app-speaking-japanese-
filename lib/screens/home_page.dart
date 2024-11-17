import 'package:flutter/material.dart';

import 'package:speaking_jpanes/comonents/category_items.dart';
import 'package:speaking_jpanes/screens/NumbersPage.dart';
import 'package:speaking_jpanes/screens/colorsPage.dart';
import 'package:speaking_jpanes/screens/family_members-page.dart';
import 'package:speaking_jpanes/screens/phrases.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku (Speak Japanese)',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        Category(
          color: Colors.orange,
          text: 'Numbers',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const numbersPage();
            }));
          },
        ),
        Category(
          color: Colors.green,
          text: 'Family Members',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const familymembersPage();
            }));
          },
        ),
        Category(
            color: const Color(0xff7d40a2),
            text: 'Colors',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
              }));
            }),
        Category(
            color: const Color(0xff47a5cb),
            text: 'Phrases',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const phrasesPage();
              }));
            }),
      ]),
    );
  }
}
