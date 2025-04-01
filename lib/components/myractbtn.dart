import 'package:flutter/material.dart';

class MyRactButton extends StatelessWidget{
       
          final VoidCallback onPress;
          final String btname;
          final IconData icon;
       const MyRactButton({super.key,required this.btname,required this.onPress,required this.icon});

  @override
  Widget build (BuildContext context){
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 14),
          child: InkWell(
            onTap: onPress,
            //now here we use statefuln widget for getx this btn will change the vulue if tapped ,updated this in main.dart
          child:
           Container(
          // padding: const EdgeInsets.all(10),
            height: 49,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color:  Theme.of(context).colorScheme.primary
            ),
            child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 7,
                ),
                IconButton(onPressed: (){

                }, icon: Icon(icon,color: Colors.white)),
                Text(btname,style: const TextStyle(fontSize: 18,letterSpacing: 1.5,  color: Colors.white
                ,fontWeight: FontWeight.bold),
                ),
                
              ],
            )
          ) )
         
            
            
        );
  }
}