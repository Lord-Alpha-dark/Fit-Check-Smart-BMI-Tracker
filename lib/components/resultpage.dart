import 'package:bmi_calculator/components/bmicontrol.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
//percent_indicator: ^4.2.3 this package i added in pubspec.yaml folder
class resultpage extends StatelessWidget{
  const resultpage({super.key});

  @override
  Widget build(BuildContext context){
    bmicontrol temp=Get.put(bmicontrol());
    var result =(temp.weight.value/(temp.height.value*temp.height.value))*10000;
    //var re=result.toStringAsPrecision(4);
      return Scaffold(
       
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
            const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                 child: const Icon(Icons.arrow_back_ios_new),
                  ),
                  const Text("Back",style: TextStyle(fontSize: 20),)
                ],
              ),
              const SizedBox(
                height: 15,
              ),
               Text("Your BMI",style: TextStyle(fontSize: 28,color: temp.colorstatus(result),fontWeight: FontWeight.bold,)),
             const SizedBox(
                height: 40,
              ),
              CircularPercentIndicator(
                  radius: 140.0,
                  lineWidth: 30.0,
                  animation: true,
                  percent: result/100,
                  
                  center: Obx(() => Text("${result.toStringAsPrecision(4)}",style: TextStyle(fontSize: 50,color: temp.colorstatus(result) ),),), 
                   circularStrokeCap: CircularStrokeCap.round,
                  progressColor: temp.colorstatus(result),
                  backgroundColor: temp.colorstatus(result).withOpacity(0.2),
                ),
                const SizedBox(
                  height: 4,
                ),
                Obx(() => Text(temp.bmistatus(result),style: TextStyle(color: temp.colorstatus(result),fontSize: 30,fontWeight: FontWeight.bold),),)
                ,
                 const SizedBox(
                  height: 19,
                ),
                Padding(padding: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  decoration: BoxDecoration(
                    color:Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text("If UnderWeight,you are in risk of having anemia, Malnutrition, Weakend Immune System, Osteoporosis.                                 If Overweight You are in risk of having Heart Disease ,High BP, Type 2 Diabetes,Gallstones",
                             style: TextStyle(fontSize: 16),),
                ),

                ),
               
            ],
            )
           )
      );
  }
}