import 'package:flutter/material.dart';
import 'package:ticketbook_app/screens/ticket_view.dart';
import 'package:ticketbook_app/utils/app_layout.dart';
import 'package:ticketbook_app/utils/info_list.dart';


import '../utils/app_styles.dart';

class TicketSection extends StatelessWidget {
  
  const TicketSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLay.getSize(context);
    final Map<String,dynamic> single = tikcetinfolist.first;
    return Scaffold(
      backgroundColor: Styles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 19,vertical: 19),
        children: [
             
           const SizedBox(height: 40,),
          Text("Tickets",style: Styles.headlinestyle0.copyWith(fontSize: 35))
          ,const SizedBox(height: 10,)
            ,
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                  color : const  Color(0xFFF4F6FD),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      width: size.width*.44,
                      decoration:const BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(50))
                           
                      ),
                      child: const Text("Upcoming",textAlign: TextAlign.center,),
                    ),
                     Container(
                       padding: const EdgeInsets.symmetric(vertical: 8),
                      width: size.width*.44,
                      decoration:const BoxDecoration(
            
                        color: Colors.transparent,
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(50))
                           
                      ),
                      child:const  Text("Previous",textAlign: TextAlign.center,),
                    )
                  ],
                ),
              ),
            )
          ,

          const SizedBox(height: 40,)
          
          ,
                     
              Container(
                
                 padding: const EdgeInsets.only(left: 19),
                
                child: Column(
                  children: [
                     
                    
                          Container(
                           
                            child: TicketView(ticketinfo: single,iscolor: true,)),

                          Container
                          (
                            margin: const EdgeInsets.only(right: 16),
                              width: size.width*0.81,
                              
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(19),
                                bottomRight: Radius.circular(9)),
                                color: Colors.white
                              ),
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                             child: Column(
                              
                              
                                 children: [
                                    Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Gaurang Patel",style: Styles.smallheadlinestyleb,textAlign: TextAlign.start,),
                                      Text("446648763",style: Styles.smallheadlinestyleb,textAlign: TextAlign.end,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Passenger",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),),
                                      Text("Passport",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),)
                                    ],
                                  )
                                  ,
                                  const SizedBox(height: 30,)
                                  ,
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("5593463 9946",style: Styles.smallheadlinestyleb,textAlign: TextAlign.start,),
                                      Text("B3ISWSKW39",style: Styles.smallheadlinestyleb,textAlign: TextAlign.end,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Number of E-ticket",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),),
                                      Text("Booking code",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),)
                                    ],
                                  ),
                                  const SizedBox(height: 30,)
                                  ,
                                   Row(
                                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [Container(
                                          
                                          height: 19,
                                          width: 49,
                                          decoration:const  BoxDecoration(
                                            image: DecorationImage(
                                             
                                              fit: BoxFit.fill,
                                              image: AssetImage('assets/image/visa_icon.png')
                                            )
                                          ),
                                        ),
                                      
                                      Text(" *** 3986",style: Styles.smallheadlinestyleb,),]),
                                      Text("\$399",style: Styles.smallheadlinestyleb,textAlign: TextAlign.center,)
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Payment method",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),),
                                      Text("Price",style: Styles.smallheadlinestyle1.copyWith(color: Colors.grey),)
                                    ],
                                  )
                                  ,
                                  Container(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Row(
                                      
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Container(
                                          
                                          height: 50,
                                          width: size.width*.69,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(19),
                                            image: const DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(

                                                'assets/image/barcode.png'
                                              )
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                 ], 
                                
                              
                            ),
                          )
                      
        ])
        
          
              )
           
           ,Container(
            
            padding: const EdgeInsets.only(left: 19,top: 19),
            child: TicketView(ticketinfo: single))
          
        ],
      
        
      ),
    );
  }
}