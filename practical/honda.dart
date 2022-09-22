

import 'cars_details.dart';

class Honda implements Cars_details{
  @override
  String color='Black';

  @override
  int model=2019;

  @override
  int price=1300;

static List nonbooked_dayes_H=[];

@override
  String toString() {
    // TODO: implement toString
    return'The model of the car is $model , the color is $color and the price for one day is $price ';
  }
}