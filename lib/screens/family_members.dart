import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';
import 'package:toku/themes/theme_provider.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> fm = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand_father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand_mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'Brother (older)',
        sound: 'sounds/family_members/older_bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'Brother (younger)',
        sound: 'sounds/family_members/younger_brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'Sister (older)',
        sound: 'sounds/family_members/older_sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'Sister (younger)',
        sound: 'sounds/family_members/younger_sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          // style: TextStyle(color: Colors.white),
        ),
        actions: [
          ThemeToggleButton(),
        ],
        // backgroundColor: Color(0xff46322B),
      ),
      body: ListView(
        children: getList(fm),
      ),
    );
  }

  List<Widget> getList(List<ItemModel> fm) {
    List<Widget> itemsList = [];
    for (int i = 0; i < fm.length; i++) {
      itemsList.add(ListItem(
        item: fm[i],
        color: Color(0xff609244),
      ));
    }
    return itemsList;
  }
}
