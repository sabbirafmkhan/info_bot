import 'package:flutter/material.dart';
import 'package:info_bot/screens/chat_screen.dart';
import 'package:info_bot/screens/home_screen.dart';

void main() {
  runApp(const InfoBotApp());
}

class InfoBotApp extends StatelessWidget {
  const InfoBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "InfoBot",
      theme: ThemeData(
        fontFamily: 'Arial',
        primaryColor: const Color(0xFF876CFF),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
      routes: {
        ChatScreen.routeName: (_) => const ChatScreen(),
      },
    );
  }
}
