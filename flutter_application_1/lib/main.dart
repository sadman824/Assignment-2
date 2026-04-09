import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 249, 84, 29),
          brightness: Brightness.light,
        ),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
