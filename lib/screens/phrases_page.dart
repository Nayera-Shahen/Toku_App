import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/components/phrases_item.dart';
import 'package:toku/models/item.dart';
import 'package:toku/themes/theme_provider.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<ItemModel> ph = const [
    ItemModel(
        jpName: 'Anata no namae wa nandesuka',
        enName: 'What is Your Name',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'How Are You Feeling',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'Kimasu ka',
        enName: 'Are You Coming',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I Love Anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I Love Programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'Doko ni iku no',
        enName: 'Where Are You Going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'Hai, ikimasu',
        enName: 'Yes i am Coming',
        sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          // style: TextStyle(color: Colors.white),
        ),
        actions: [
          ThemeToggleButton(),
        ],
        // backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: ph.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            item: ph[index],
            color: Color(0xff50ADC7),
          );
        },
      ),
    );
  }
}
