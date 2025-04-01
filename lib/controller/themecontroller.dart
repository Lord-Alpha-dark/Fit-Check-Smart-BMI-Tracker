import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* GetX is not only a state management library, but instead, it is a microframework combined with route management and dependency injection.
 It aims to deliver top-of-the-line development experience in an extra lightweight but powerful solution for Flutter.
 
 Flutter is a declarative framework. This means that it is okay to build the UI from scratch instead of modifying 
 a small part of it because Flutter is efficient at rebuilding the UI when a widget changes its state. 
 
 . The GetX Controller class controls the state of the UI when you wrap an individual widget with its Observer so that it only rebuilds when there 
 is a change in the state of that particular widget.*/


class themecontroller extends GetxController{

RxBool isDark =false.obs;//we have created observable by using .obs or rx<type>
//by default it will be light
//https://www.youtube.com/watch?v=qA2U4H48AjQ&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=10 */

 void LchangeTheme() async{
  isDark.value=true;
  //so here if we press butto  to change theme it will change the value here
  //Get.changeThemeMode(isDark.value ?ThemeMode.dark : ThemeMode.light);
  
  Get.changeThemeMode(ThemeMode.dark);
}

void DchangeTheme() async{
  isDark.value=false;
  Get.changeThemeMode(ThemeMode.light);
}
}