import 'dart:async';

import 'package:eccommerce1/screens/loginScreen/login_screen.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(SplashPage());

}

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage>{


  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duracion = Duration(seconds: 9);
        return new Timer(duracion, route);
    }
    route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()
    ));
    }

  @override
  Widget build(BuildContext context){
    return initWidget(context);
  }

  Widget initWidget(BuildContext context){

    return Scaffold(
      body: Stack(
        children: [
          Container(
           decoration: BoxDecoration(
             color: new Color(0xffF5591F),
             gradient: LinearGradient(colors: [(new Color(0xff1393aa)),(new Color(0xff1fceee))],
             begin: Alignment.topCenter,
              end: Alignment.bottomCenter
              )
           ),
          ),
        ],
      ),
    );
  }


}