import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitcart/Screens/homeScreen.dart';
import 'package:fruitcart/Screens/welcomeScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
    //   home: homeScreen(),
  ));
}
