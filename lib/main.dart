import 'package:bmi_calculator/components/Heightselector.dart';
import 'package:bmi_calculator/components/bmicontrol.dart';
import 'package:bmi_calculator/components/myractbtn.dart';
import 'package:bmi_calculator/components/primarybutton.dart';
import 'package:bmi_calculator/components/resultpage.dart';
import 'package:bmi_calculator/components/themechangebtn.dart';
import 'package:bmi_calculator/components/weightSelector.dart';
import 'package:bmi_calculator/config/theme.dart';
import 'package:bmi_calculator/heightSelector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    /*GetMaterialApp is part of the GetX package, which provides a state management solution and additional features,
     while MaterialApp is part of the Flutter framework itself. */
    return GetMaterialApp(
      title: 'BMI APP',
      theme: lighttheme, 
      darkTheme: Darktheme,//The [ThemeData] to use when a 'dark mode' is requested by the system.this option will by default set to dark or light but if want to change manually
      //then we install getx pack and put in pubspec yaml
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    /*a Controller is an object that manages the state of certain user interface elements or widgets, such as TextField, ListView, ScrollController, etc. It allows you to interact with these widgets and control the widgets programmatically.
     Using controllers, we can retrieve or set the current value of a widget, scroll to a specific position, clear input. */
     
    /*Get.put() function is part of the GetX package and is used for dependency injection, specifically for registering and obtaining instances of controllers or services.
     It allows you to create a singleton instance of a class and makes it available for the entire application. */
     bmicontrol bmi=Get.put(bmicontrol());
    return Scaffold(
      
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const SizedBox(
            height:46,
          ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         themechangebtn()
        ]
          ),
        Padding(
          padding:const EdgeInsets.symmetric(vertical: 13,horizontal: 10),
         child: Text("Welcome 😊",style: TextStyle(fontSize: 16,color: Theme.of(context).colorScheme.onBackground),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
         child: Text("BMI Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.onBackground),),
        ),
       const SizedBox(
          height: 30,
        ),
         Row(
          children: [
             primarybutton(onPress: () {
               bmi.genderHandle("MALE");
             },//so here updation in the value changes the state 
             icon: Icons.male,btname: "MALE",),
            
             primarybutton(onPress: () {
               bmi.genderHandle("FEMALE");
             },icon: Icons.female,btname: "FEMALE",)
          ],
        ),
        const SizedBox(
          height: 16,
        ),
  
        Row(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
         
            const SizedBox(
              width: 5,
            ),
        //we used expanded in both the containers in a row so equally distributed
          Heightselector(),
          
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
        children:[  
            weightSelector(),
          
             heightSelector(),
        ]///
           )
          
        ]
           ),
           const SizedBox(
            height: 10,
           ),
           Row(
            children:[
            const  SizedBox(
              width: 14,
              ),
          Container(
            width: 331,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Theme.of(context).colorScheme.primary,
            ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              MyRactButton(btname: "Lets Go", onPress: (){Get.to(()=>const resultpage());}, icon: Icons.done)
            ]
           ) 
          
          
          ),
            ]
           )
        ]
      )
        
        
        
        
      );
      // body: Center(
      //   child:ElevatedButton(onPressed: (){
      //          control.changeTheme();
      //   }, child: Text("Change Theme")) ,)
    
  }
}
