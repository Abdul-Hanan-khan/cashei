import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cashei/views/contants/constants.dart';
import 'package:cashei/controllers/auth_controller.dart';
import 'package:cashei/views/screens/auth/login_screen.dart';
import 'package:cashei/views/screens/auth/signup_screen.dart';

import 'views/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

///anas
///anas
///anas
///anas
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
