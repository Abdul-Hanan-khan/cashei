import 'dart:async';

import 'package:cashei/views/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          child: Image.asset("assets/images/Rectangle 1.png", fit: BoxFit.fill,),
        ),
        Container(
          height: Get.height,
          width: Get.width,
          color: Colors.black.withOpacity(0.5),
        ),
        Container(
          height: Get.height,
          width: Get.width,
          child: Image.asset("assets/images/Rectangle 190 (1).png", fit: BoxFit.fill,),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/IMG-20221014-WA0009 1.png"),
              SizedBox(
                height: Get.height*0.025,
              ),

              Text("Cashei", style: TextStyle(
                  color: Colors.white,
                  fontSize: 32
              ),),
              SizedBox(
                height: Get.height*0.032,
              ),
              Text("Share your moment with", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),
              SizedBox(
                height: Get.height*0.005,
              ),
              Text("the cashie community", style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),),

            ],
          ),
        )



      ],
    ));
  }
}
