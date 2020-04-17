//factory design pattern

import 'dart:math';

//2. factory constructor
abstract class Shape {
  factory Shape(String type) {
    if(type == 'circle') return Circle(2);
    if(type == 'square') return Square(2);
    throw "Can't create $type";
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2) / 2;
}

//1.implementing a factory as a top-level function
// Shape shapeFactory(String type) {
//   if(type == 'circle') return Circle(2);
//   if(type == 'square') return Square(2);
//   throw 'Can\'t create $type';
// }




main() {
  /*usual stuff */
  // final circle = Circle(2);
  // final square = Square(2);

  // print(circle.area);
  // print(square.area);

  /*top-level */
  // final circle = shapeFactory('circle');
  // final square = shapeFactory('square');

  // print(circle.area);
  // print(square.area);

  /*using a factory constructor */
  //try and catch
  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (e) {
    print(e);
  }
}