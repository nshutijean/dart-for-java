/**
 * The Dart language doesn't include an interface keyword because every class defines an interface.
 */

import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

//CircleMork doesnt inherit the implementation of Circle, but only uses its interface
//So this looks like an inheritance implementation in Java
class CircleMock implements Circle {
  //implementing missing methods and field from circle
  num area;
  num radius;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}