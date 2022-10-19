void main(List<String> args) {
  //! the main thread keeps going down without implementing the Future Object Async Operations (And Left For Another Thread)
  final firstFuture =
      Future(() => print("It's first Statement but second compiled"));
  print("It's second statement but first compiled");
}
