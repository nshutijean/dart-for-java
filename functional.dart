/**
 * Things you can do in functional programming:
 * -pass functions as arguments
 * -assign a function to a variable
 * -deconstruct a function that takes multiple arguments into a sequence of functions that each take a single argument (also called currying)
 * -create a nameless function that can be used as a constant value (also called a lambda expression
 */

String scream(int length) => "A${'a' * length}h!";

main() {
  final lengths = [1, 2, 4, 8, 16];
  //imperative(not functional) code

  // for (var length in lengths) {
  //   print(scream(length));
  // }

  // lengths.map(scream).forEach(print);
  lengths.skip(1).take(3).map(scream).forEach(print);
}