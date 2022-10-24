
import 'package:cashei/views/screens/winners_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cashei/controllers/auth_controller.dart';
import 'package:cashei/views/screens/profile_screen.dart';
import 'package:cashei/views/screens/challanges.dart';
import 'package:cashei/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  Challanges(),
  // const AddVideoScreen(),
WinnerScreen(),
  ProfileScreen(uid: authController.user.uid),
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;
