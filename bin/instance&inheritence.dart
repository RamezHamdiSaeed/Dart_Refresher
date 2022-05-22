//! we use abstract to prevent instantiation from it
abstract class Human {
  late String name = "ramez";
  late int age;
  void printInfo() {}
}

//! if we use implements instead of extends we can implement several classes and abstract classes with comma separated
//! if we use implements we need to implement/reimplement all the super classes and super abstract classes
class Parent implements Human {
  //variables
  late String name;
  late String job;
  late int
      age; //*to make a private variable we use _ before the variable name, so we can access it from outside the class
  static int noOfParents =
      0; //we can only access this value using third party methods like getters and setters
  //* static variables are shared by all instances of the class
  //constructor
  Parent(this.name, this.job, this.age)
      : assert(name.isNotEmpty, "name can't be empty"),
        assert(job.isNotEmpty, "job can't be empty"),
        assert(age > 18, "Age must be greater than 18") {
    noOfParents++;
  }
  /******************  */
  //methods
  void printInfo() {
    print("Name: $name, Job: $job, Age: $age");
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
  int get getAge => age;
  //setters
  set setName(String name) => this.name = name;
  set setJob(String job) =>
      (job != "trader") ? this.job = job : print("You can't be a trader");
  set setAge(int age) => this.age = age;
}

class Sibilings extends Parent {
  Sibilings(String name, int age,
      [String job =
          "student"]) //* there is an optional parameter and can be multiple optional parameteres using [ ] and , separated, assure the optional parameter is the last one
      : super(name, job,
            age); //! we need to call the super constructor to initialize the variables of the parent class
  @override //!this is optional but recommended to override the parent class methods
  //* we can override the methods but using the same signature and same identifier name according to variables
  void printInfo() {
    // TODO: implement printInfo
    super.printInfo(); //super is used to call the parent class methods
    print("Nice to meet you");
  } //* we cannot overload the constructors but we can use like so Sibilings.anotherConstructor()
//* we can overload all members of the class but we can't overload the disstructor
}
