import 'dart:convert';
import 'dart:developer';

import 'package:bw1_ui/model/notification_model.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import'package:http/http.dart'as http;
class ApiService {
  static const _notification="https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json";


Future<List<MyNotification>> dataFetching()async{
  try{
  final response=await http.get(Uri.parse(_notification));
if(response.statusCode==200){
  print("data fetched");
  final decodeData=jsonDecode(response.body)['data']as List;
  return decodeData.map((e) => MyNotification.fromMap(e),).toList();
}else{
  print("empty");
}}
catch(e){
  log("notification Error${e}");
}
return[];
}
}