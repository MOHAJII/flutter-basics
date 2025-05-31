import 'package:basics/pages/chat.page.dart';
import 'package:basics/pages/counter.page.dart';
import 'package:basics/pages/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => HomePage(),
        "/counter" : (context) => CounterPage(),
        "/chat" : (context) => ChatPage(),
      },
      theme: ThemeData(
        indicatorColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.tealAccent,
          primary: Colors.teal,
        ),
      ),
    );
  }
}

