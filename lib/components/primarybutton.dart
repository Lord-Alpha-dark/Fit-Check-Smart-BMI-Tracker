import 'package:bmi_calculator/components/bmicontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class primarybutton extends StatelessWidget{

        final IconData icon;
        final String btname;  
        final VoidCallback onPress;

        const primarybutton({required this.icon,required this.btname,required this.onPress});
  
  @override
  Widget build (BuildContext context){
    bmicontrol bmi=  Get.put(bmicontrol());
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 14),
          child: InkWell(
            onTap: onPress,
            //now here we use statefuln widget for getx this btn will change the vulue if tapped ,updated this in main.dart
          child:Obx(() =>
           Container(
          // padding: const EdgeInsets.all(10),
            height: 49,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color:  bmi.Gender.value==btname ? Theme.of(context).colorScheme.primary:Colors.white
            ),
            child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 7,
                ),
                IconButton(onPressed: (){
                
                }, icon: Icon(icon,color: bmi.Gender.value==btname ? Colors.white:Theme.of(context).colorScheme.primary)),
                Text(btname,style: TextStyle(fontSize: 18,letterSpacing: 1.5,  color: bmi.Gender.value==btname ? Colors.white:Theme.of(context).colorScheme.primary
                ,fontWeight: FontWeight.bold),),
                
              ],
            )
          ) )
         
            )
            
        );
  }
}