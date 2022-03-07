import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice1/my_cars_screens.dart';

import 'single_selection_screen.dart';


void main(){
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: SingleSelectionScreen(),
  ));
}