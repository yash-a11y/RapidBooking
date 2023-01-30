import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbook_app/utils/app_layout.dart';
import 'package:ticketbook_app/utils/app_styles.dart';
import 'package:ticketbook_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    
      final size = AppLay.getSize(context); 

    return SizedBox(
      width: size.width*0.85,
      height: 199,
      
      child: Container(
        margin : const EdgeInsets.only(right : 16),
        
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
           //bluecard of ticket
           Container( 
            decoration: const BoxDecoration(
              color:  Color(0xFF526799),
              borderRadius:  BorderRadius.only(topLeft: Radius.circular(19),
              topRight: Radius.circular(19))
            ),


           
            padding: const EdgeInsets.all(15),
            child:Column(children: [
              Row(
                children: [
                  Text("NYC",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),),
                  const Spacer(),
                  const CircularContain(),
                   Expanded(child: Stack(
                     children: [
                      SizedBox(
                      height: 24,
                                     
                        child: LayoutBuilder (
                          builder: (BuildContext context , BoxConstraints  constraints) { 
                          return  Flex(direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                            width: 3 ,height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(
                              color: Colors.white
                            ),)
                          )),
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          );
                           },
                         
                        ),
                                     )
                     ,
                       Center(child: Transform.rotate(angle: 1.5,child:   Icon(Icons.local_airport_rounded,color : Colors.white),))
                ],
                   )),
              
                  const CircularContain(), 

                  const Spacer(),
                  
                  Text("UK",style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)
                ],
              )
           
           ,const  SizedBox(height: 4)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                SizedBox(width: 100,child: Text("NEW-YORK",style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),textAlign: TextAlign.start,))
              ,
             
              Text("8H 30M",style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),textAlign: TextAlign.center,)
              ,
            
               SizedBox(width: 100,child: Text("LONDON",style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),textAlign: TextAlign.end,))
               ]
            )]) 
             ,
           )
        
          //end of blue card view

          //orange card view 
          ,
          Container(
             color: Styles.orange,
              child: 
              Row(
               
                children:  [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                     )

                    
                    )),
                  )
                  ,
                  Expanded( 
                    child : Padding(
                        padding: EdgeInsets.all(0),
                        child: SizedBox(

                      height: 24,
                      child:  LayoutBuilder(
                      builder: (BuildContext context , BoxConstraints constraint) {
                      return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraint.constrainWidth()/6).floor(), (index) =>
                      const  SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox
                        (decoration: BoxDecoration(
                          color: Colors.white
                        ),),
                      ))
                      
                      );
                        },
                      
                    ) 
                    ),
                    )
                   ,
                  )
                 
                  ,
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                     )

                    
                    )),
                  )
                ],
              ),
          )
          // end of orng
          ,
          //other orng container
          Container(

              padding: const EdgeInsets.all(15),
              decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(19),bottomRight: Radius.circular(19))
              ,
              color: Styles.orange
              )
            ,
            child: Column(
            
              // mainAxisSize: MainAxisSize.min,
              children:  [

                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children:  [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("1 May", style: Styles.smallheadlinestyle.copyWith(color: Colors.white),),
                            const SizedBox(height: 5),
                            Text("Date", style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),),
                        ],
                        
                      )
                      ,
                     
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("09:00 PM", style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)
                          ,
                           const SizedBox(height: 5),
                          Text("Depature Time", style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),)
                        ],
                      )

                      ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("25", style: Styles.smallheadlinestyle.copyWith(color: Colors.white),)
                          ,
                           const SizedBox(height: 5),
                          Text("Number", style: Styles.smallheadlinestyle1.copyWith(color: Colors.white),)
                        ],
                      )
                      ,
                    ],
                  )
                  ,
                 
              ],
            ),

          )

        ],
      ),)
    );
  }
}