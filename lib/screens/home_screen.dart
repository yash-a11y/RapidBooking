import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbook_app/screens/hotels_view.dart';
import 'package:ticketbook_app/screens/ticket_view.dart';
import 'package:ticketbook_app/utils/app_styles.dart';
import 'package:ticketbook_app/utils/info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal : 19),
            child: Column(

              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [  
                       Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                         Text("Good morning" , style: Styles.smallheadlinestyle),
                         const SizedBox(height: 6,),
                         Text("Book Ticket" , style : Styles.headlinestyle0),
                      ],
                    ),
                     Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "assets/image/ticket.png"
                          ),
                        ),
                      ),
                    )
                  ], 
                ),
                const SizedBox(height: 26),
             
                Container(
                 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal : 11,vertical : 11),
                  child: Row(
                    children:  [
                      
                      Icon(FluentSystemIcons.ic_fluent_search_regular , color: Color(0XFFBFC205),),
                      Text("search"
                      , style: Styles.smallheadlinestyle,),
                    ],
                  ),
                )
                ,
                const SizedBox(height : 40)
                ,    
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights",
                    style: Styles.headlinestyle1,),
                    InkWell(
                      onTap: () => {
                        print("oky")
                      },
                      child: Text("View all", style: Styles.textstyle.copyWith(
                        color: Styles.primarycolor
                      ),),
                    ),

                  ],
                )
                ,
                
                
             
              ],
            ),
          )
          ,const SizedBox(height : 16)
          ,SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 19),
            child: Row(
              children: tikcetinfolist.map((e) => TicketView(ticketinfo: e)).toList()
            ),
          )
          ,
          Container(

              padding: const EdgeInsets.symmetric(horizontal: 19),
              margin: const EdgeInsets.only(top: 39),
              child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hotels",style: Styles.headlinestyle1,),
              Text("View all",style: Styles.smallheadlinestyle,)
            ],
          ),

          )
          
         , SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 19),
          child: Row(
            children: hotelinfolist.map((e) => HotelView(hotelinfo: e)).toList()
            
            ,)
         )

        ],
      ) ,
    );
  }
}  