import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticketbook_app/utils/app_layout.dart';
import 'package:ticketbook_app/utils/app_styles.dart';
import 'package:ticketbook_app/widgets/circular_widget.dart';
import 'package:ticketbook_app/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticketinfo;
  final bool? iscolor;
  const TicketView({Key ? key, required this.ticketinfo,this.iscolor}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    
    final Map<String,dynamic> infofrom = ticketinfo['from'];
    final Map<String,dynamic> infoto = ticketinfo['to'];

    print(ticketinfo);
      final size = AppLay.getSize(context); 

    return SizedBox(
      width: size.width*0.85,
      height: 173,
      
      child: Container(
        margin : const EdgeInsets.only(right : 16),
        
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          
           //bluecard of ticket
           Container( 
            decoration:  BoxDecoration(
              color: (iscolor == null?Color(0xFF526799) : Colors.white) ,
              borderRadius:  BorderRadius.only(topLeft: Radius.circular(19),
              topRight: Radius.circular(19))
            ),


           
            padding: const EdgeInsets.all(15),
            child:Column(children: [
              Row(
                children: [
                  Text("${infofrom['code']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),),
                  const Spacer(),
                   CircularContain(iscolor: iscolor),
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
                       Center(child: Transform.rotate(angle: 1.5,child:   Icon(Icons.local_airport_rounded,color :  iscolor == null?Colors.white : Colors.grey),))
                ],
                   )),
              
                   CircularContain(iscolor: iscolor), 

                  const Spacer(),
                  
                  Text("${infoto['code']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),)
                ],
              )
           
           ,const  SizedBox(height: 4)
            ,Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                SizedBox(width: 100,child: Text("${infofrom['name']}",style: Styles.smallheadlinestyle1.copyWith(color: iscolor == null?Colors.white : Colors.grey),textAlign: TextAlign.start,))
              ,
             
              Text("${ticketinfo['time']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),textAlign: TextAlign.center,)
              ,
            
               SizedBox(width: 100,child: Text("${infoto['name']}",style: Styles.smallheadlinestyle1.copyWith(color:  iscolor == null?Colors.white : Colors.grey),textAlign: TextAlign.end,))
               ]
            )]) 
             ,
           )
        
          //end of blue card view

          //orange card view 
          ,
          Container(
             color:  (iscolor == null?Styles.orange : Colors.white),
              child: 
              Row(
               
                children:  [
                  
                   (iscolor == null ?
                  const SizedBox(
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
                 :

                  Circular()
                  )
                  ,
                  Expanded( 
                    child : Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(

                      height: 24,
                      child:  LayoutBuilder(
                      builder: (BuildContext context , BoxConstraints constraint) {
                      return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraint.constrainWidth()/6).floor(), (index) =>
                        SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox
                        (decoration: BoxDecoration(
                          color:  (iscolor == null?  Colors.white : Colors.grey),
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
                  
                   (iscolor == null ?
                  const SizedBox(
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
                 :

                  Circular())
                  
                ],
              ),
          )
          // end of orng
          ,
          //other orng container
          Container(

              padding: const EdgeInsets.all(15),
              decoration:  BoxDecoration(
              
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular((iscolor == null ?19:0)),bottomRight: Radius.circular((iscolor == null ?19:0)))
              ,
              color: (iscolor == null? Styles.orange: Colors.white),
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
                            Text("${ticketinfo['date']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),),
                            const SizedBox(height: 5),
                            Text("Date", style: Styles.smallheadlinestyle1.copyWith(color:  iscolor == null?Colors.white : Colors.grey),),
                        ],
                        
                      )
                      ,
                     
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${ticketinfo['dept_time']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),)
                          ,
                           const SizedBox(height: 5),
                          Text("Depature Time", style: Styles.smallheadlinestyle1.copyWith(color:  iscolor == null?Colors.white : Colors.grey),)
                        ],
                      )

                      ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${ticketinfo['number']}",style: (iscolor == null ? Styles.smallheadlinestylew : Styles.smallheadlinestyleb),)
                          ,
                           const SizedBox(height: 5),
                          Text("Number", style: Styles.smallheadlinestyle1.copyWith(color: iscolor == null?Colors.white : Colors.grey),)
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