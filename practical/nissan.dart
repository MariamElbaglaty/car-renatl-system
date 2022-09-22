


import 'cars_details.dart';

class Nissan implements Cars_details{
  @override
  String color='Black';

  @override
  int model=2020;

  @override
  int price=1500;

  static List nonbooked_dayes_N=[];

 @override
  String toString() {
    // TODO: implement toString
    return'The model of the car is $model , the color is $color and the price for one day is $price ';
  }
}