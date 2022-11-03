import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Sample'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
