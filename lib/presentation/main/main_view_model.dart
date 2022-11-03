import 'package:flutter/cupertino.dart';

class MainViewModel with ChangeNotifier {
  int count = 0;
  bool isLoading = false;

  Future<void> countUp() async{
    // 렌더링
    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    count++;
    // 렌더링링
    isLoading = false;
    notifyListeners();

  }

}