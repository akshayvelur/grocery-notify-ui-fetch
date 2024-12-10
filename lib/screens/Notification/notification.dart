import 'package:bw1_ui/Services/api_service.dart';
import 'package:bw1_ui/model/notification_model.dart';
import 'package:bw1_ui/screens/Notification/widget/card_view.dart';
import 'package:bw1_ui/screens/Notification/widget/notification_appbar.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  ApiService api = ApiService();
  late Future<List<MyNotification>> getNotification;
  void initState() {
    api.dataFetching();
    getNotification = api.dataFetching();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: whiteClr,
      appBar: NotificationAppBar(),
      body: Column(
        children: [
          CardView(getNotification: getNotification)
        ],
      ),
    );
  }
}
