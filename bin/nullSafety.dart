void nullSafety() {
  String? name;
  //late String name2;//late is optional in dart , to tell the compiler that the variable is not nullable and will be initialized later
  //print(name.length);//throw error because of null
  // if (name != null) {
  //   print(name.length);
  // }
  assert(name != null, "name is null");
  print(name!.length);

  // print(name!.isEmpty);
}
