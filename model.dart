switch (number) {
// Constant pattern matches if 1 == number.
case 1:
print('one');
}
const a = 'a';
const b = 'b';
switch (obj) {
// List pattern [a, b] matches obj first if obj is a list with two fields,
// then if its fields match the constant subpatterns 'a' and 'b'.
case [a, b]:
print('$a, $b');
}
var numList = [1, 2, 3];
// List pattern [a, b, c] destructures the three elements from numList...
var [a, b, c] = numList;
// ...and assigns them to new variables.
print(a + b + c);
switch (list) {
case ['a' || 'b', var c]:
print(c);
}
// Declares new variables a, b, and c.
var (a, [b, c]) = ('str', [1, 2]);
var (a, b) = ('left', 'right');
(b, a) = (a, b); // Swap.
print('$a $b'); // Prints "right left".
switch (obj) {
// Matches if 1 == obj.
case 1:
print('one');

// Matches if the value of obj is between the
// constant values of 'first' and 'last'.
case >= first && <= last:
print('in range');

// Matches if obj is a record with two fields,
// then assigns the fields to 'a' and 'b'.
case (var a, var b):
print('a = $a, b = $b');

default:
}
var isPrimary = switch (color) {
Color.red || Color.yellow || Color.blue => true,
_ => false
};
switch (pair) {
case (int a, int b):
if (a > b) print('First element greater');
// If false, prints nothing and exits the switch.
case (int a, int b) when a > b:
// If false, prints nothing but proceeds to next case.
print('First element greater');
case (int a, int b):
print('First element not greater');
}
Map<String, int> hist = {
'a': 23,
'b': 100,
};

for (var MapEntry(key: key, value: count) in hist.entries) {
print('$key occurred $count times');
}
var info = userInfo(json);
var name = info.$1;
var age = info.$2;
var (name, age) = userInfo(json);
final Foo myFoo = Foo(one: 'one', two: 2);
var Foo(:one, :two) = myFoo;
print('one $one, two $two');
sealed class Shape {}

class Square implements Shape {
final double length;
Square(this.length);
}

class Circle implements Shape {
final double radius;
Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
Square(length: var l) => l * l,
Circle(radius: var r) => math.pi * r * r
};
if (json is Map<String, Object?> &&
json.length == 1 &&
json.containsKey('user')) {
var user = json['user'];
if (user is List<Object> &&
user.length == 2 &&
user[0] is String &&
user[1] is int) {
var name = user[0] as String;
var age = user[1] as int;
print('User $name is $age years old.');
}
}
if (json case {'user': [String name, int age]}) {
print('User $name is $age years old.');
}