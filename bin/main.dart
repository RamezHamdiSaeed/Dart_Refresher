void main(List<String> args) async {
//* Future operation without async and await to prevent make the most innermost function async
//   final futureSum = Future.delayed(Duration(seconds: 1), sum)
//       .then((value) => print(value))
//       .catchError((onError) => print(onError));

//! implementing the above sum using async and await (notice any Future<dynamic> will be dynamic using await)
//* the try and catch here behaves as same as .catchError() in Future
  try {
    final asyncFutureSum = await Future.delayed(Duration(milliseconds: 2), sum);
    //* the below statement behaves as same as .then() in future
    print(asyncFutureSum);
  } catch (error) {
    print("returned asyncFutureSum operation with error: $error");
  }
}

double sum() => 2.5 + 3.0;
