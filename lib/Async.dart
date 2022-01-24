class Async {
  void asynctest1() async {
    print("mehod begen");
    print(DateTime.now().toString());
    print("data1 start");
    print(await asyncFunc("data1", 3));

    print("data2 start");
    print(await asyncFunc("data2", 2));

    print("data3 start");
    print(await asyncFunc("data3", 1));
  }

  Future<String> asyncFunc(String name, int time) async {
    return Future.delayed(Duration(seconds: time), () {
      return name + ":" + DateTime.now().toString();
    });
  }
}
