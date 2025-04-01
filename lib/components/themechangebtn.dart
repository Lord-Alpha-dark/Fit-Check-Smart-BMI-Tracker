
import 'package:bmi_calculator/controller/themecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class themechangebtn extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    themecontroller controll=Get.put(themecontroller());
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                 color: Theme.of(context).colorScheme.primaryContainer,
                 borderRadius: BorderRadius.circular(20)
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  controll.LchangeTheme();//so here we fuxed dark value ,if its light thwn always false(check themecontroller) so simply according to that color will change
                }, icon: Icon( Icons.dark_mode,color: controll.isDark.value? Theme.of(context).colorScheme.primary:Theme.of(context).colorScheme.onSecondaryContainer,)
                ),
              IconButton(onPressed: (){
                  controll.DchangeTheme();
                }, icon:  Icon( Icons.light_mode,color:  controll.isDark.value? Theme.of(context).colorScheme.onSecondaryContainer:Theme.of(context).colorScheme.primary,)
                ),
              ]
            )
            
            );
  }
}