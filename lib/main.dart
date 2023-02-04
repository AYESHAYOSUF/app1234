
import 'package:eccommerce1/appColors/app_colors.dart';
import 'package:eccommerce1/screens/loginScreen/login_screen.dart';
import 'package:flutter/material.dart';



void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          )),
          
          primarySwatch: Colors.blue,
        ),
   
        home: LoginScreen(),
    );
  }
}
