

import 'package:flutter/cupertino.dart';


import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

 
  @override
  Widget build(BuildContext context) {

     final size = AppLay.getSize(context);

    return Container(
padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 16),
margin: const EdgeInsets.only(right: 16,top: 5),
 height: 350,
 width: size.width*0.6,
 decoration: BoxDecoration(
  color: Styles.primarycolor,
  borderRadius: BorderRadius.circular(24)
 ),
 child: Column(
  
  
  children: [


    Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(19)),
        color: Styles.primarycolor,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image/hotel0.jpg"
          )
        )
      )
    )
  ],
 ),
  
 
    );
  }
}