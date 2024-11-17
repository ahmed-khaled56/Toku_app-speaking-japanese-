import 'package:flutter/material.dart';
import 'package:speaking_jpanes/comonents/itemsOfFamilyMembers.dart';
import 'package:speaking_jpanes/comonents/models.dart';

// ignore: camel_case_types
class familymembersPage extends StatelessWidget {
  final List<familyMember> familymembersList = const [
    familyMember(
      enName: 'father',
      jpName: 'chichoiy',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    familyMember(
      enName: 'daughter',
      jpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    familyMember(
      enName: 'grandfather',
      jpName: 'ojiisan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
    ),
    familyMember(
      enName: 'grandmother',
      jpName: 'sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    familyMember(
      enName: 'mother',
      jpName: 'hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    familyMember(
      enName: 'older brother',
      jpName: 'Nisan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav',
    ),
    familyMember(
      enName: 'older sister',
      jpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    familyMember(
      enName: 'son',
      jpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    familyMember(
      enName: 'younger brother',
      jpName: 'otouto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    familyMember(
      enName: 'younger sister',
      jpName: 'imouto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];
  const familymembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Fmaily Memebrs',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: familymembersList.length,
        itemBuilder: (context, index) {
          return familymemberCategory(family_member: familymembersList[index]);
        },
      ),
    );
  }
}
