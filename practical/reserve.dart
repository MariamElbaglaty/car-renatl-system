import 'cars_details.dart';
import 'choose_cars.dart';
import 'honda.dart';
import 'kia.dart';
import 'main.dart';
import 'dart:io';
import 'Current_guests.dart';
import 'nissan.dart';
import 'old_guests.dart';
import 'schedule.dart';
class reserve{
static List <Current_guests>info1  =[];
static List <Old_guests>info2  =[];
static Current_guests y=Current_guests(0, 0, '', '', '');
static Old_guests z=Old_guests(0, 0, '', '', '');

reserve()
{
  print('Welcome to our car rental system');
  print('Do you want to  1) Rent a car    2) Check your reservation  3) Cancel your reservation');
  int choice= int.parse(stdin.readLineSync()!);

  if (choice==1)
  {
 new_booking();
  }
else if(choice==2)
{
check_booking();
}

else if (choice==3)
{
cancel_booking();
}





}

new_booking()
{

print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);

Old_guests id_old=info2.firstWhere((element) => element.id==id,orElse: () => z );
bool ids=id_old==z;
if ( !ids )
{
print('Your data ${id_old}');

Choose_cars.choose();
}


else {
  print('Please,Enter your phone number');
  int phone =int.parse(stdin.readLineSync()!);

print('Please,Enter your first name');
 String F_name=stdin.readLineSync()!;

 print('Please,Enter your last name');
 String L_name=stdin.readLineSync()!;

print('Please,Enter your email');
String email=stdin.readLineSync()!;

info1.add(Current_guests(id, phone, F_name, L_name, email));
info2.add(Old_guests(id, phone, F_name,L_name, email));

Choose_cars.choose();
 
}



}

check_booking()
{
print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);

Current_guests Current_id=info1.firstWhere((element) => element.id==id,orElse: () => y);
bool ids=Current_id==y;

if (!ids)
 print ('your data are ${Current_id}');
 
  
  else{
print ('Invalid id');
check_booking();
   }



}





cancel_booking()
{
print('Please,Enter your id');
int id =int.parse(stdin.readLineSync()!);

print ('Enter the car type , Write the first letter in capital please');
String type=stdin.readLineSync()!;

Schedule m = Schedule.reservation.firstWhere((element) => element.id==id);
int x= info1.indexWhere((element) => element.id==id);
info1.removeAt(x);


int y = Schedule.reservation.indexWhere((element) => element.id==id);
info1.removeAt(y);



if (type=='Nissan')
{
Nissan.nonbooked_dayes_N.add(m.day);
}

else if (type=='Kia')
{
Kia.nonbooked_dayes_K.add(m.day);
}

else if (type=='Honda')
{
  Honda.nonbooked_dayes_H.add(m.day);
}
}



}