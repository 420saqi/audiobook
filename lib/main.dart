import 'package:audio_b/plauing_audio_screen.dart';
import 'package:audio_b/play_audio_practice.dart';
import 'package:audio_b/screens/audio_books_categories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AudioBooksCategoriesScreen(),
    );
  }
}
