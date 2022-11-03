import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/presentation/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  // final viewModel = MainViewModel();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Sample'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () async{
           setState(() {
             viewModel.isLoading = true;
           });

            await Future.delayed(const Duration(seconds: 1));

            setState(() {
              viewModel.countUp();
              viewModel.isLoading = false;
            });
          },
          child: viewModel.isLoading ?
          const Center(child: CircularProgressIndicator(),)
          : Text(
            '${viewModel.count}',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
