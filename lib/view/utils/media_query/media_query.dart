import 'package:flutter/material.dart';

mediaQueryHeight(double x,context){
  return MediaQuery.of(context).size.height*x;
}


mediaQueryWidth(double x,context){
  return MediaQuery.of(context).size.width*x;
}