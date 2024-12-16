import 'dart:isolate';
import 'dart:developer';

import 'package:bw1_ui/Services/api_service.dart';
import 'package:bw1_ui/model/notification_model.dart';
import 'package:bw1_ui/screens/notification/widget/card_view.dart';
import 'package:bw1_ui/screens/notification/widget/notification_appbar.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  
  @override
  // ignore: override_on_non_overriding_member
  ApiService api = ApiService();
   late Future<List<MyNotification>> getNotification;
  void initState() {
  getNotification= _getData();
  // api.dataFetching();
   // getNotification = api.dataFetching();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final String message = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(backgroundColor: whiteClr,
      appBar: NotificationAppBar(),
      body: Column(
        children: [
         CardView(getNotification: getNotification),
        ],
      ),
    );
  }
    Future<List<MyNotification>> _getData() async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_fetchDataInIsolate, receivePort.sendPort);

    try {
      return await receivePort.first as List<MyNotification>;
    } catch (e) {
      log("Error in isolate: $e");
      return [];
    }
  }

   static void _fetchDataInIsolate(SendPort sendPort) async {
    ApiService apiService = ApiService();
    try {
      final data = await apiService.dataFetching();
      sendPort.send(data);
    } catch (e) {
      sendPort.send([]);
    }
  }
}