# Basic
## Arguments
Arguments are the actual values passed into a function, method, or constructor when it's called. These are the input values that allow the function or method to operate.

For example:
```dart
void greet(String name) { // 'name' is a parameter
  print("Hello, $name!");
}

greet("World"); // "World" is an argument
```

There are two types of arguments:
1. Positional Arguments
```dart
void greet(String name) {
  print("Hello, $name!");
}

greet('World')
```
2. Named Arguments
```dart
void greet({required String name}) {
  print("Hello, $name!");
}

greet(name: 'World')
```

## Parameters
Parameters are the variables that are defined in the function, method, or constructor signature. They are placeholders that specify what kind of data the function expects when it is called.

For example:
```dart
void greet(String name) { // 'name' is a parameter
  print("Hello, $name!");
}
```

## Properties
Properties are variables that belong to an object or class. They represent the state or attributes of an object. In Flutter (and Dart), properties are typically used within classes to define the internal data of an object.

Typically properties are define within a class to store data that can be accessed or modified.
```dart
class Person {
  String name;  // 'name' is a property

  Person(this.name);

  void greet() {
    print("Hello, $name");
  }
}
```