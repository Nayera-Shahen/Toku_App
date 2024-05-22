import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:toku/themes/app_theme.dart';
import 'package:toku/themes/theme_provider.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';
import 'package:toku/screens/login_page.dart';
import 'package:toku/screens/signUp_page.dart';

void main() async {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: TokuApp()));
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).isDarkMode
          ? AppTheme.darkTheme
          : AppTheme.lightTheme,
      home: const LoginPage(),
      //theme: ThemeData.light(),
      routes: {
        'home_page': (context) => const HomePage(),
        'signUp_page': (context) => SignUpPage(),
        'login_page': (context) => const LoginPage(),
      },
    );
  }
}
