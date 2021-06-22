import 'package:flutter/material.dart';
import 'package:finalhilal/screens/home_screen.dart';
import 'package:finalhilal/screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/ChatScreen': (context) => ChatScreen()
      },
    );
  }
}
