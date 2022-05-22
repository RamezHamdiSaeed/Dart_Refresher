class Parent {
  //variables
  late String name;
  late String job;
  late int
      _age; //*to make a private variable we use _ before the variable name, so we can access it from outside the class
  //constructor
  Parent(this.name, this.job, this._age)
      : assert(name.isNotEmpty, "name can't be empty"),
        assert(job.isNotEmpty, "job can't be empty"),
        assert(_age > 18, "Age must be greater than 18");
  /******************  */
  //methods
  void printInfo() {
    print("Name: $name, Job: $job, Age: $_age");
  }

  //destructor
  //destructor is a method which is called when the object is deleted
  //~Parent() {
  //  print("Destructor called");
  //}
/*****************   */
//* getters and setters
  //getters
  String get getName => name;
  String get getJob => job;
  int get getAge => _age;
  //setters
  set setName(String name) => this.name = name;
  set setJob(String job) =>
      (job != "trader") ? this.job = job : print("You can't be a trader");
  set setAge(int age) => this._age = age;
}
