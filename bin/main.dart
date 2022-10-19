void main(List<String> args) async {
//* implementing the Stream operations without the async and await
  final infiniteNumbers =
      Stream.periodic(Duration(seconds: 1), (value) => value + 1);
  // final infiniteNumbersSubscription = infiniteNumbers.listen((_) => _);
  // infiniteNumbersSubscription.onData((data) =>
  //     (data > 2) ? infiniteNumbersSubscription.cancel() : print(data));
  // infiniteNumbersSubscription.onError((handleError) => print(handleError));
//! using Async and Await
  try {
    await for (var numberFromFiniteNumbers in infiniteNumbers) {
      if (numberFromFiniteNumbers < 3) {
        print(numberFromFiniteNumbers);
      } else {
        break;
      }
    }
  } catch (error) {
    print(error);
  }

  //!!!!!!!!!!You cannot listen to same streamer using many objects !!!!!!!!!!!!!!!\\
}
