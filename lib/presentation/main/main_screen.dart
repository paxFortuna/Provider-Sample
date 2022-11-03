import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count = 0;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Sample'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () async{
           setState(() {
             isLoading = true;
           });

            await Future.delayed(const Duration(seconds: 1));

            setState(() {
              count++;
              isLoading = false;
            });
          },
          child: isLoading ?
          const Center(child: CircularProgressIndicator(),)
          : Text(
            '$count',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
