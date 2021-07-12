import 'package:flutter/material.dart';
import 'package:slider_mini_project/home.dart';
import 'package:slider_mini_project/q1.dart';
import 'package:slider_mini_project/q2.dart';
import 'package:slider_mini_project/q3.dart';
import 'package:slider_mini_project/q4.dart';
import 'package:slider_mini_project/q5.dart';
import 'package:slider_mini_project/q6.dart';
import 'package:slider_mini_project/Loading.dart';


void main() {
  runApp(MaterialApp(
   // initialRoute: '/',
    routes: {
      '/':(context)=>home(),
      '/q1':(context)=>q1(),
      '/q2':(context)=>q2(),
      '/q3':(context)=>q3(),
      '/q4':(context)=>q4(),
      '/q5':(context)=>q5(),
      '/q6':(context)=>q6(),
      '/final':(context)=>Loading(),

    },
  ));
}


