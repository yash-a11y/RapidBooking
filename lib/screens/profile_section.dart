import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbook_app/utils/app_layout.dart';
import 'package:ticketbook_app/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size  = AppLay.getSize(context);
    return Scaffold(
      
     backgroundColor: Styles.bgcolor,
     body: Container(
      padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 19),
       child: ListView(
        children: [
           Container(
            
            
            child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  children: [

                       Container(
                  height: 80,
                  width: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                       
                      'assets/image/ticket.png'
                    ))
                  ),
                )

                ,
                Container(alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 10,),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Book Tickets",style : Styles.headlinestyle0),
                      Text("New-York",style: Styles.smallheadlinestylew.copyWith(color: Colors.grey),),
                      Padding(
                        padding:const EdgeInsets.only(left: 3,top: 10)
                      ,child: Container(
                        
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                        child: Row(
                          children: [
                            Icon(FluentSystemIcons.ic_fluent_premium_filled,size: 19)
                            ,
                            const SizedBox(width: 8,),
                            Text("Premium status",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey.shade800),)
                          ]),
                      ))
                    ],
                  ),

                
                )
                  ],
                ),
               

                

                
              Text("Edit",style: Styles.smallheadlinestyle,),
              
              ],
            ),
           )
            ,
           const SizedBox(height: 40,)
           ,
           Stack(
             children: [

             Container(
              padding: const EdgeInsets.symmetric(horizontal : 15,vertical: 15),
              decoration: BoxDecoration(
                color: Styles.primarycolor,
                borderRadius: BorderRadius.circular(19)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                 Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_regular))
           
                  ,
                
                  Container  (
                    margin: const EdgeInsets.only(left: 9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("You'v got a new award",style: Styles.headlinestyle1.copyWith(color: Colors.white)),
                        Text("You have 95 flights in a year",style: Styles.smallheadlinestyle.copyWith(color: Colors.white54),)
                      ],
                    ),
                  )
                ],
              ),
             ),
              Positioned
              (
                right: -40,
                top: -40,
                child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 19,color: Colors.blue.shade900),
                
                          ),
                         ),
              )   
        ]) 
           ,
          const SizedBox(height: 19,),
          Text("Accumulated miles",style: Styles.headlinestyle0,),
          const SizedBox(height: 19,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Column(
              children: [
                   Text("186310",style : Styles.headlinestyle.copyWith(fontSize: 39),textAlign: TextAlign.center),
                   
                   Container(
                    margin: const EdgeInsets.only(top: 19),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Miles accured",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                        Text("6 Feb 2023",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),)
                      ],
                     ),
                   )
                   ,
                   Container(
                    margin: const EdgeInsets.only(top: 19),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                               Text("13 019",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Miles",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                       ,
                       Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                               Text("Airline CO",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Received from",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                      ],
                     ),
                   )
                   ,
                   Container(
                    margin: const EdgeInsets.only(top: 19),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                               Text("39",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Miles",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                       ,
                       Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                               Text("Burger king",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Received from",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                      ],
                     ),
                   )
                   ,
                   Container(
                    margin: const EdgeInsets.only(top: 19),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                               Text("56 390",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Miles",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                       ,
                       Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                               Text("ABestech",style: Styles.smallheadlinestyleb),
                               Padding(
                                 padding: const EdgeInsets.only(left : 3,top: 3),
                                 child: Text("Received from",style: Styles.smallheadlinestylew.copyWith(color : Colors.grey),),
                               )
                          ],
                        )
                      ],
                     ),
                   )
                   ,
                   const SizedBox(height: 30,),
                   Text("How to get more miles",style : Styles.smallheadlinestyle.copyWith(color : Styles.primarycolor) ,textAlign: TextAlign.center)
              
              ],
            ),

          )
          
         
        ],
       ),
     ),
    );
  }
}