import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(InfoBotApp());
}

class InfoBotApp extends StatelessWidget {
  const InfoBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InfoBot',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'SFPro',
        scaffoldBackgroundColor: Color(0xFFF9F9FB),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (_) => HomeScreen(), '/chat': (_) => ChatScreen()},
    );
  }
}
