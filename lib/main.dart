
import 'package:unachcedes/consts.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:unachcedes/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CEDES UNACH',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}
