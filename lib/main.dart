import 'package:flutter/material.dart';
import 'package:ticketbook_app/screens/bottombar.dart';
import 'package:ticketbook_app/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}

