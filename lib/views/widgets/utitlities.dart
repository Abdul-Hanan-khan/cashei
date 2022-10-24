import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

var themecolor= Color(0xFF7C67C0);

MyContainer(String text){
  return Container(
    height: Get.height*0.07,
    width: Get.width*0.9,
    child: Center(
      child: Text(text, style: TextStyle(
          color: Colors.white,
          fontSize: 16
      ),),
    ),
    decoration:BoxDecoration(
        color: themecolor,
        borderRadius: BorderRadius.circular(10)

    ) ,
  );
}