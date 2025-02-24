import 'package:flutter/material.dart';
import 'package:project_5/pages/homepage.dart';
import 'package:project_5/pages/loginPage.dart';
import 'package:project_5/theme/colors.dart';


void main()=> runApp( MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: AppColors.bgColor,
            brightness: Brightness.light,
        ),
        home: LoginPage(),
    );
  }
}