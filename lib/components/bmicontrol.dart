import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bmicontrol extends GetxController{
RxString Gender="MALE".obs;

RxInt weight=67.obs;
RxInt age=20.obs;
RxDouble height=160.0.obs;
RxString status="".obs;
Rx<Color> color= Colors.blue.obs;

//we madse this class bcoz we initalize gender and if we press the male female btn,if the string matches with gender then it activates that btn
void genderHandle(String gender){
  Gender.value=gender;
}  
String bmistatus(double val)
{
  if(val<18){
    status.value="UnderWeight";
  }
  else if(val<25 && val>=18){
    status.value="Normal";

  }
  else if(val>=25 && val<40){
    status.value="OverWeight";
  }
  else{
    status.value="Obese";
  }
  return status.toString();
}
Color colorstatus(double val)
{
  if(val<18){
    color.value=Colors.yellow;
  }
  else if(val<25 && val>=18){
    color.value=Colors.green;

  }
  else if(val>=25 && val<40){
    color.value=Colors.orange;
  }
  else{
    color.value=Colors.red;
  }
  return color.value;
}
}