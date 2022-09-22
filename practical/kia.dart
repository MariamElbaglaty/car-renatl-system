

import 'cars_details.dart';

class Kia implements Cars_details{
  @override
  String color='Silver';

  @override
  int model=2020;

  @override
  int price=2000;

  static List nonbooked_dayes_K=[];

@override
  String toString() {
    // TODO: implement toString
    return'The model of the car is $model , the color is $color and the price for one day is $price ';
  }

}