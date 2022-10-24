import 'package:cashei/views/screens/auth/signup_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
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
          color: Colors.black.withOpacity(0.7),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height*0.1,
              ),
              Image.asset("assets/images/IMG-20221014-WA0009 1.png"),
              SizedBox(
                height: Get.height*0.025,
              ),

              Text("Cashei", style: TextStyle(
                  color: Colors.white,
                  fontSize: 32
              ),),
              SizedBox(
                  height: Get.height*0.055
              ),
              Text("WelcomeAgain!", style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: Get.height*0.023,
              ),
              Text("Discover interesting short videos.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),),
              SizedBox(
                height: Get.height*0.005,
              ),
              Text("Share your moments with the CutG", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),),
              SizedBox(
                height: Get.height*0.005,
              ),
              Text("community", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),),
              SizedBox(
                height: Get.height*0.1,
              ),

              InkWell(
                onTap: (){
                  Get.to(LoginScreen());

                },
                child: MyContainer("Login"),
              ),

              SizedBox(
                height: Get.height*0.027,
              ),
              InkWell(
                onTap: (){
                  Get.to(SignUpScreen());
                },
                child: Container(
                  height: Get.height*0.07,
                  width: Get.width*0.9,
                  child: Center(
                    child: Text("Register", style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),),
                  ),
                  decoration:BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color:Colors.transparent,
                      borderRadius: BorderRadius.circular(10)

                  ) ,
                ),
              ),
              SizedBox(
                height: Get.height*0.15,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Continue as a guest", style: TextStyle(

                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                height: 1,
                width: Get.width*0.36,
                color: Colors.white.withOpacity(0.7),
              )

            ],
          ),
        )



      ],
    ));
  }
}
