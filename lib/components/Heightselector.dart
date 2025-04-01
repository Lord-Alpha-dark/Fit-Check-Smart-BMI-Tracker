import 'package:bmi_calculator/components/bmicontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Heightselector extends StatelessWidget{
  Widget build (BuildContext context){
    bmicontrol temp=Get.put(bmicontrol());
    return  Padding(padding: const EdgeInsets.all(10),
          child:  Container(
            width:155,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Theme.of(context).colorScheme.primaryContainer
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text("Height(Cm)",style: TextStyle(fontSize: 15,
                      color: Theme.of(context).colorScheme.onSecondaryContainer))
                  ],
                
                ),
                Expanded(child: 
                Obx(() =>   SfSlider.vertical(
      min: 100,
      max: 240,
      value: temp.height.value,
      interval: 20,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 4,
      onChanged: (dynamic value) {
       temp.height.value=value;
      },
    ),)
              
    )
              ], 
            )
            
          
           ),
        );
  }
}