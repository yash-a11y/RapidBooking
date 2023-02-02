import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketbook_app/screens/upcoming_flt.dart';
import 'package:ticketbook_app/utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({Key ? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = AppLay.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 19),
        children:   [

          const SizedBox(height: 40,),
          Text("What are\nyou looking for?",style: Styles.headlinestyle0.copyWith(fontSize: 35))
          ,const SizedBox(height: 10,)

          //airline and hotels row container
          ,FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                color : const  Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
          
                  //airline container 
                  Container (
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: size.width*.44,
                     decoration: const  BoxDecoration(
                      color : Colors.white,
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
              ),
              child: const Center(child: Text("Airline Tickets")),
                  )
                  ,
                  //hotels container
                  Container (
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: size.width*.44,
                     decoration: const  BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(50))
              ),
              child: const Center(child: Text("Hotels")),
                  )
                ],
              ),
            ),
          )
          ,
          const SizedBox(height: 19)
          ,
          //departure row
          Container(
            width: size.width*.44,
             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            decoration:  BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(6)

            ),
            child: Row(
              children: [
               Icon(Icons.flight_takeoff_rounded,color : Colors.grey.shade300),
               const SizedBox(width: 8,),
               Text("Departure")           
                  ],
            ),
          )
          ,
           const SizedBox(height: 19)
          ,
          //arrival row
          Container(
            width: size.width*.44,
             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            decoration:  BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(6)

            ),
            child: Row(
              children: [
               Icon(Icons.flight_land_rounded,color : Colors.grey.shade300),
               const SizedBox(width: 8,),
               Text("Arrival")           
                  ],
            ),
            
            
          )
          ,
           const SizedBox(height: 19)
          ,
          //find tickets button
          Container(
            width: size.width*.44,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
            decoration:  BoxDecoration(

              color: Styles.primarycolor,
              borderRadius: BorderRadius.circular(6)

            ),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               
              children: [
               
               
               Text("Find tickets",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)           
                  ],
            ),
          )
          ,

          const SizedBox(height: 33,)
          ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Flights",style: Styles.headlinestyle1,)
              ,
              Text("View all",style: Styles.smallheadlinestyle,)
            ],
          )        
          ,
          const SizedBox(height :19),

          UpcomingFlight(),
          
        ],
      ),
    );
  }
}