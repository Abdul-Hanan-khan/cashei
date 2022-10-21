import 'package:flutter/material.dart';

class WinnerScreen extends StatelessWidget {
  const WinnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SafeArea(
          child: Center(child: Text("Winners Screen"),)
      ),
    );

  }
}
