

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketbook_app/screens/home_screen.dart';
import 'package:ticketbook_app/screens/search_screen.dart';
import 'package:ticketbook_app/screens/ticket_section.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
 int index = 3;

  List<Widget> widgets  =  <Widget>[
    
    const HomeScreen(),
    const SearchScreen(),
    const TicketSection(),
    const Text("profile")
 
  ];

  //
  void getindx(int indx)
  {
    setState(() {
      
      index = indx;
      
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("My ticket"),
      // ),
      body: Center(child: widgets[index]),

      bottomNavigationBar: BottomNavigationBar(
        onTap: getindx,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false, 
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const[
         BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular) ,
          activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled), 
          label: "home"),
         BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular) ,
          activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled), 
          label: "search"),
         BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular) ,
          activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_filled) ,
           label: "ticket"),
         BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular) ,
          activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled) ,
           label: "profile"),

        ]
      ),
    );
  }
}