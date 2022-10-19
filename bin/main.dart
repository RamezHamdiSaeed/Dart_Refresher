void main(List<String> args) {
//* Future operation without async and await to prevent make the most innermost function async
  final futureSum = Future.delayed(Duration(seconds: 1), sum)
      .then((value) => print(value))
      .catchError((onError) => print(onError));
}

double sum() => 2.5 + 3.0;
