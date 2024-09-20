import 'package:flutter/material.dart';
import 'package:time_the_world/pages/home.dart';
import 'package:time_the_world/pages/select_location.dart';
import 'package:time_the_world/pages/loading.dart';


void main() =>
  runApp(MaterialApp(
    initialRoute: '/home',
     routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => SelectLocation(),

     },
     
     
     )); //Material App

