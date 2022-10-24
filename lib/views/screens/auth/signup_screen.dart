import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

String name="";
String email="";
String password="";
String confirmpassword="";
bool check = false;

var obscuretext= true;

class _SignUpScreenState extends State<SignUpScreen> {
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
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Welcome!", style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: Get.height*0.03,
              ),
              TextFormField(
                onChanged: (value){
                  name=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Name',
                ),

              ),
              SizedBox(
                height: Get.height*0.02,
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
                  hintText: 'Email',
                ),

              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              TextFormField(
                onChanged: (value){
                  password=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Password',
                ),

              ),
              SizedBox(
                height: Get.height*0.02,
              ),
              TextFormField(
                onChanged: (value){
                  confirmpassword=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Confirm password',
                ),

              ),

              SizedBox(
                height: Get.height*0.01,
              ),
              SizedBox(
                height: Get.height*0.02,
              ),

              Row(
                children: [

                  InkWell(
                    onTap: (){
                      check=!check;
                      setState(() {

                      });
                    },
                    child: Container(
                      height:28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: themecolor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Icon(Icons.check, size: 20,color:check?themecolor:themecolor.withOpacity(0),)),
                    ),
                  ),
                  Text("   I agree with  ", style: TextStyle(
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 15,
                  ),),
                Column(
                  children: [
                    Text("Terms and Conditions", style: TextStyle(
                        color: themecolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                    Container(
                      height: 1,
                      width:Get.width*0.4,
                      color: themecolor,
                    )
                  ],
                )

                ],
              ),
              SizedBox(
                height: Get.height*0.05,
              ),

              MyContainer("Agree and Register"),
              SizedBox(
                height: Get.height*0.03,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height: 0.3,
                    width: Get.width*0.3,
                    color: Colors.black.withOpacity(0.6),
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
                    height: 0.3,
                    width: Get.width*0.3,
                    color: Colors.black.withOpacity(0.6),
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

