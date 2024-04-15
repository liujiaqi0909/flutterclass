import 'dart:math';

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  // Point example
  var pointA = Point(1, 2);
  var pointB = Point(4, 6);
  print('Distance between A and B: ${pointA.distanceTo(pointB)}');

  // Vector example
  var v = Vector(2, 3);
  var w = Vector(2, 2);
  print('Vector sum v + w: ${v + w}');
  print('Vector difference v - w: ${v - w}');

  // Rectangle example
  var rect = Rectangle(3, 4, 20, 15);
  print('Initial rectangle: left=${rect.left}, top=${rect.top}, right=${rect.right}, bottom=${rect.bottom}');
  rect.right = 12;
  print('Rectangle after setting right: left=${rect.left}, top=${rect.top}, right=${rect.right}, bottom=${rect.bottom}');
}
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  // Rectangle example
  var rect = Rectangle(3, 4, 20, 15);
  print('Initial rectangle: left=${rect.left}, top=${rect.top}, right=${rect.right}, bottom=${rect.bottom}');
  rect.right = 12;
  print('Rectangle after setting right: left=${rect.left}, top=${rect.top}, right=${rect.right}, bottom=${rect.bottom}');

  // Doer example
  var effectiveDoer = EffectiveDoer();
  effectiveDoer.doSomething();
}

abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
    print('EffectiveDoer is doing something!');
  }
}