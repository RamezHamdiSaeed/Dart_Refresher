void main(List<String> args) {
  //! to deal with stream of functions but below statement is used frequently after each second from zero
  //! we usually using Stream in two different variables one for the the Stream itself and another for the listener (SteamSubscription)
  //! _to be capable of using the resume,pause and cancel... (on the StreamSubscription)
  final streamOfNumbers =
      Stream.periodic(Duration(seconds: 1), (val) => val + 1);
  // final streamOfNumbersSub = streamOfNumbers.listen((_) => _);
  // streamOfNumbersSub.onData((data) =>
  //     (data > 2) ? streamOfNumbersSub.cancel() : streamOfNumbersSub.resume());
  // streamOfNumbersSub.onDone(
  //     () => print("the streamOfNumbers is fulfilled with 10 as endpoint"));
  // streamOfNumbersSub
  //     .onError((error) => print("trying to calculate using Chars"));

  //! to filter the stream of data we do it directly to itself and assign it to another stream (result is filtered stream in stream)
  final filteredStream = streamOfNumbers.where((event) => event % 2 == 0);
  filteredStream.listen((event) => print(event));
}
