import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/HomePage.dart';

import 'Pages/ChatsPage.dart';
import 'Pages/SettingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E55),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 18),
          iconTheme: IconThemeData(
            color: Colors.white,

          )
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white.withOpacity(0),
        ),
      ),
    routes: {
    "/": (context) => const HomePage(),
      "settingsPage": (context) => const SettingsPage(),
      "chatsPage": (context) => const ChatsPage(),
    },
    );
  }
}

