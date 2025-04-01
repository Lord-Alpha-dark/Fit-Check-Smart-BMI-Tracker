import 'package:bmi_calculator/components/bmicontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class weightSelector extends StatelessWidget{
    
  
  Widget build (BuildContext context){
    bmicontrol temp=Get.put(bmicontrol());
    return Padding(
            padding: const EdgeInsets.all(10) ,
          child: Container(

            height: 180,
            width: 155,
            decoration: BoxDecoration(
                
              borderRadius: BorderRadius.circular(7),
              color: Theme.of(context).colorScheme.primaryContainer),
            
              child:  Column(
              children: [
           const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text("Weight(Kg)",style: TextStyle(fontSize: 15,
                      color: Theme.of(context).colorScheme.onSecondaryContainer))
                  ],
                
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Obx(() =>Text("${temp.weight.value}",style: TextStyle(fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground)
                      )
                       ) 
                 
                  ],
                
                ),  
                 Row(
                  children: [
                   
                    Padding(padding: const EdgeInsets.all(10),
                    child:InkWell(
                      onTap: (){
                      temp.weight.value--;
                      },

              child:  Container(
                      height: 32,
                      width: 38,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Icon(Icons.remove,color: Colors.white,) ,
              ) 
              
                  ),
                    ),
                  const  SizedBox(
                      width: 48,
                    ),
                    InkWell(
                      onTap: (){
                       temp.weight.value++;
                      },
                child:Container(
                      height: 32,
                      width: 38,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: Icon(Icons.add,color:Colors.white ) ,
                  )
                    )
                  ],
                ),
               
              ], 
              
            )
            
            ),
          );
  }
}