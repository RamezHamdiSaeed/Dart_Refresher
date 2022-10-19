void main(List<String> args) {
  //! to deal with stream of functions but below statement is used frequently after each second from zero
  final streamOfNumbers =
      Stream.periodic(Duration(seconds: 1), (val) => val + 1);
  streamOfNumbers.listen((event) => print("now the time wasted $event"));
}
