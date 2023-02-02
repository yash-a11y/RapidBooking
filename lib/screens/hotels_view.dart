

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {

  final Map<String,dynamic> hotelinfo;

  const HotelView({Key ? key , required this.hotelinfo}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {

     print(hotelinfo);

     final size = AppLay.getSize(context);

    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 16),
     margin: const EdgeInsets.only(right: 16,top: 5),
     height: 350,
     width: size.width*0.6,
     decoration: BoxDecoration(
     color: Styles.primarycolor,
     borderRadius: BorderRadius.circular(24)
  ,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade300,
      blurRadius: 19,
      spreadRadius: 6
    )
  ]
 ),
 child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  
  children: [


    Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(19)),
        color: Styles.primarycolor,
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image/${hotelinfo['image']}"
          )
        )
      )
      ,  
    )
    ,
    const SizedBox(height: 9,)
    ,

    Text("${hotelinfo['place']}"
    ,
    style: Styles.headlinestyle1.copyWith(color: Styles.creamcolor))
    ,
    const SizedBox(height: 5,)
    ,
    Text("${hotelinfo['destination']}"
    ,
    style: Styles.smallheadlinestyle.copyWith(color: Colors.white))
    ,
    const SizedBox(height: 8,)
    ,
    Text("\$${hotelinfo['price']}/night"
    ,
    style: Styles.headlinestyle0.copyWith(color: Styles.creamcolor))
 
 
  ],
 ),
  
 
    );
  }
} 