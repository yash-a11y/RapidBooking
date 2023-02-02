import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbook_app/utils/app_layout.dart';

import '../utils/app_styles.dart';

class UpcomingFlight extends StatelessWidget {
  const UpcomingFlight({super.key});

  @override
  Widget build(BuildContext context) {

    final size = AppLay.getSize(context);
    return Container(
    
    //  width: size.width*.44,
      height: size.height*0.44,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //for hotels container
          Container(
            
             
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13)
            )
            ,
            child: Column(
             
             
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  height: 180,
                  
                  width: size.width*.33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage (
                        'assets/image/hotel0.jpg'
                        ))
                  ),
               
                )
                ,
                const SizedBox(height: 8,),
                Text("20% discount\non business\nclass\ntickets from\nAirline on\nInternational"
                ,style: Styles.headlinestyle1.copyWith(color: Colors.grey),
                textAlign: TextAlign.left,)
              ],
            ),
          )
         ,
        

         Container(
          
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            
            children: [
              Column(
                children: [

                   //container for discount
                  Stack(
                    children: [
                        Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      height: size.height*.21,
                      width: size.width*.44,
                      decoration :BoxDecoration(
                     color:  Colors.teal.shade400,
                     borderRadius: BorderRadius.circular(13)
                     ),
                     child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey",style: Styles.headlinestyle0.copyWith(color: Colors.white),)
                        ,
                        const SizedBox(height : 10),
                  
                        Text("Take the survey\nabout our\nservices and\nget a discount"
                        ,style: Styles.smallheadlinestyle.copyWith(color: Colors.white))
                      ],
                     ) ,
                    )
                        ,
                        Positioned(
                          top: -40,
                          right: -45,
                          child: 
                         Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 19,color : Colors.teal.shade500),
                      color: Colors.transparent

                    ),
                        )
                       
                  )

                    ],
                     
                  )
                  ,
                  
                  
                  SizedBox(height: 13,),
                  //feedback container
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    height: size.height*.21,
                    width: size.width*.44,
                    decoration :BoxDecoration(
                   color:  Colors.red.shade400,
                   borderRadius: BorderRadius.circular(13)
                   ),
                   child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Take love",style: Styles.headlinestyle0.copyWith(color: Colors.white),)
                      ,
                      const SizedBox(height : 19),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const  [
                            
                              
                             Text("😍",style: TextStyle(fontSize: 23)),
                             Text("🥰",style:TextStyle(fontSize : 36),),
                             Text("😘",style:TextStyle(fontSize : 23)),
                            
                          ],
                        ),
                      )
                    ],
                   ) ,
                  )               
                ],
              )
            ],
          )
         )

        ],
      ),
    );
  }
}