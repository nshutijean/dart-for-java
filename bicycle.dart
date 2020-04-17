class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  
  Bicycle(this.cadence, this.gear);
  
  int get speed => _speed;
  
  @override
  String toString() => 'Bicycle: $_speed mph';
  
  void applyBrake(int decrement) {
    _speed -= decrement;
  }
  
  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}