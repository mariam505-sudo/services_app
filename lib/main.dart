import 'package:flutter/material.dart';
import 'package:services_app/features/home/persentation/screens/home_screen.dart';
import 'package:services_app/features/home/persentation/screens/main_screen.dart';
import 'package:services_app/features/home/persentation/screens/services_list_screen.dart';
import 'package:services_app/detail_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'services_app',
      debugShowCheckedModeBanner: false,
      home:  MainScreen(),
     
      
    );
  }
}

