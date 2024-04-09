void main() {
  print('Hello, World!');
}
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
if (year >= 2001) {
print('21st century');
} else if (year >= 1901) {
print('20th century');
}

for (final object in flybyObjects) {
print(object);
}

for (int month = 1; month <= 12; month++) {
print(month);
}

while (year < 2016) {
year += 1;
}
int fibonacci(int n) {
if (n == 0 || n == 1) return n;
return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(20);
// This is a normal, one-line comment.

/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.

/* Comments like these are also supported. */
// Importing core libraries
import 'dart:math';

// Importing libraries from external packages
import 'package:test/test.dart';

// Importing files
import 'path/to/my_other_file.dart';
class Spacecraft {
String name;
DateTime? launchDate;

// Read-only non-final property
int? get launchYear => launchDate?.year;

// Constructor, with syntactic sugar for assignment to members.
Spacecraft(this.name, this.launchDate) {
// Initialization code goes here.
}

// Named constructor that forwards to the default one.
Spacecraft.unlaunched(String name) : this(name, null);

// Method.
void describe() {
print('Spacecraft: $name');
// Type promotion doesn't work on getters.
var launchDate = this.launchDate;
if (launchDate != null) {
int years = DateTime.now().difference(launchDate).inDays ~/ 365;
print('Launched: $launchYear ($years years ago)');
} else {
print('Unlaunched');
}
}
}
