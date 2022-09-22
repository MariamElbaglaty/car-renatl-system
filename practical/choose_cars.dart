

import 'car_system.dart';
import 'main.dart';
import 'dart:io';
import 'nissan.dart';
import 'kia.dart';
import 'honda.dart';
import 'cars_details.dart';
import 'schedule.dart';

class Choose_cars extends Car_system {

static void choose()
{
  print('Choose the type of the car');
  print( '1) Nissan         2) Kia       3) Honda');
 int choice=int.parse(stdin.readLineSync()!);

 Cars_details x;

if (choice ==1)
{
 x=Nissan();
 print(x);
  nissan();
}

else if (choice==2)
{
  x=Kia();
  print(x);
  kia();
}

else if (choice==3)
{
x=Honda();
 print(x);
honda();
}
}



static void nissan ()
{
  print('${Nissan.nonbooked_dayes_N}');

  print ('Are these dayes alright with you');

  String decision=stdin.readLineSync()!;

  if (decision=='yes' || decision=='Yes')
  {
   print ('Enter the day ');
   int day =int.parse(stdin.readLineSync()!);
   Nissan.nonbooked_dayes_N.remove(day);

  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);
  
  Schedule.reservation.add(Schedule(id,'Nissan',day));}
 
 else {
  print('Do you want to choose another type?');
  String decide=stdin.readLineSync()!;
  
   if (decision=='yes' || decision=='Yes')
   {
    choose();}
     
  else {
    print ('Thank you for using our system hope you better luck next time');
  }
 }
}



static void kia()
{
  print('${Kia.nonbooked_dayes_K}');

  print ('Are these dayes alright with you');

  String decision=stdin.readLineSync()!;

if (decision=='yes' || decision=='Yes')
  {
   print ('Enter the day ');
   int day =int.parse(stdin.readLineSync()!);
   Kia.nonbooked_dayes_K.remove(day);

  print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);

    Schedule.reservation.add(Schedule(id,'Kia',day));}
 
else {
  print('Do you want to choose another type?');
  String decide=stdin.readLineSync()!;
  
   if (decision=='yes' || decision=='Yes')
   {
    choose();}
   
  else {
    print ('Thank you for using our system hope you better luck next time');
  }
 }
}



static void honda()
{
 print('${Honda.nonbooked_dayes_H}');

 print ('Are these dayes alright with you');

 String decision=stdin.readLineSync()!;

if (decision=='yes' || decision=='Yes')
  {
   print ('Enter the day ');
   int day =int.parse(stdin.readLineSync()!);
   Honda.nonbooked_dayes_H.remove(day);


 print ('Please , enter your id again to confirm');
  int id =int.parse(stdin.readLineSync()!);
  
  Schedule.reservation.add(Schedule(id,'Honda',day));}

else {
  print('Do you want to choose another type?');
  String decide=stdin.readLineSync()!;
  
   if (decision=='yes' || decision=='Yes')
   {
    choose();}

  else {
    print ('Thank you for using our system hope you better luck next time');
  }
 }
}












}



















