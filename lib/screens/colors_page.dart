import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';
import 'package:toku/themes/theme_provider.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<ItemModel> cl = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Haiiro',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
            //style: TextStyle(color: Colors.white),
          ),
          actions: [
            ThemeToggleButton(),
          ],
          //backgroundColor: Color(0xff46322B),
        ),
        body: ListView(children: getList(cl)));
  }

  List<Widget> getList(List<ItemModel> cl) {
    List<Widget> itemsList = [];
    for (int i = 0; i < cl.length; i++) {
      itemsList.add(ListItem(
        item: cl[i],
        color: Color(0xff79359F),
      ));
    }
    return itemsList;
  }
}
