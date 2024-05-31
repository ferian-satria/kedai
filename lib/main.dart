import 'package:flutter/material.dart';
import 'package:kedai/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: MaterialApp(
        title: 'Kedai Harian Bunda',
        theme: ThemeData(),
        home: const HomeScreen(),
      ),
    );
  }
}
