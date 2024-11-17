import 'package:flutter/material.dart';

import 'package:speaking_jpanes/screens/home_page.dart';

void main() {
  runApp(const language_learningApp());
}

class language_learningApp extends StatelessWidget {
  const language_learningApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
