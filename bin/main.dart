void main(List<String> args) {
  //! the main thread keeps going down without implementing the Future Object Async Operations (And Left For Another Thread)
  final firstFuture = Future(printUsingFuture);
  print("It's second statement but first compiled");
  //! then(callback function) is called to pass the value to it's callback function argument after the asynchronous operation has fulfilled
  final lastFuture = Future.delayed(
      Duration(seconds: 2),
      () =>
          2.5).then((value) => print(
      "the returned value is same as the returned value of any Future object call back function but here will be excutes lastly with value:$value"));

  //* Future.value() is used for getting a certain value but in the future not immediately
}

void printUsingFuture() {
  print("It's first Statement but second compiled");
}
