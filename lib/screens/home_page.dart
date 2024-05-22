import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';
import 'package:toku/themes/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      //backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        // backgroundColor: Color(0xff46322B),
        title: const Text(
          'TokuApp',
          //style: TextStyle(color: Colors.white),
        ),
        actions: [
          ThemeToggleButton(),
        ],
      ),
      body: Column(children: [
        Text('Content in ${theme.isDarkMode ? 'dark' : 'light'} mode'),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NumbersPage()));
          },
          text: 'Numbers',
          color: Color(0xffEF9235),
        ),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FamilyMembersPage()));
          },
          text: 'FamilyMembers',
          color: Color(0xff609244),
        ),
        Category(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ColorsPage()));
          },
          text: 'Colors',
          color: Color(0xff79359F),
        ),
        Category(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PhrasesPage()));
          },
          text: 'Phrases',
          color: Color(0xff50ADC7),
        ),
      ]),
    );
  }
}
