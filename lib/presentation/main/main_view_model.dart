class MainViewModel {
  int count = 0;
  bool isLoading = false;

  Future<void> countUp() async{
    // 렌더링
    // isLoading = true;

    await count++;
    // 렌더링링
   // isLoading = false;

  }

}