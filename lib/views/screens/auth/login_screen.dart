import 'package:cashei/views/screens/auth/signup_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String email="";

String password="";

var obscuretext= true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height*0.04,
              ),
              InkWell(
                onTap: (){

                  Get.back();
                  setState(() {

                  });
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height:38,
                    width: 38,
                    child: const Center(child: Icon(Icons.arrow_back_ios_rounded, size: 20,)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.8))
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height*0.032,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: const Text("Welcome back! Glad to", style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: const Text("see you, Again!", style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(
                height: Get.height*0.07,
              ),
              TextFormField(
                onChanged: (value){
                  email=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Enter your email',
                ),

              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              TextFormField(
                obscureText: obscuretext,
                onChanged: (value){
                  password = value;
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: (){
                        obscuretext=!obscuretext;
                        setState(() {

                        });

                      }
                      ,
                      child: Image.asset("assets/images/Vector.png")),
                  border: const OutlineInputBorder(
                  ),
                  hintStyle: const TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Enter your password',
                ),

              ),
              SizedBox(
                height: Get.height*0.01,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Forget Password?", style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),),
              ),
              SizedBox(
                height: Get.height*0.07,
              ),
              MyContainer("Login"),
              SizedBox(
                height: Get.height*0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height: 0.5,
                    width: Get.width*0.3,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Or Login with", style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Container(
                    height: 0.5,
                    width: Get.width*0.3,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: Get.height*0.02,
              ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               otherloginContainer("assets/icons/facebook_ic.png"),
               otherloginContainer("assets/icons/google_ic.png"),
               otherloginContainer("assets/icons/cib_apple.png"),
             ],
           ),
              SizedBox(
                height: Get.height*0.1,
              ),
              InkWell(
                onTap: (){

                  Get.to(SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center
                  ,
                  children: [
                    Text("Don't have an account?", style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400
                    ),),
                    Text(" Register Now", style: TextStyle(
                        color: themecolor,
                        fontSize: 17,
                    ),),



                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}

otherloginContainer(String imagetext){
  return
    Container(
      height:Get.height*0.071,
      width: Get.width*0.28,
      child: Center(child: Image.asset(imagetext)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.8))
      ),
    );
}

