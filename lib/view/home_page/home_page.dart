import 'package:bw1_ui/view/utils/colors/colors.dart';
import 'package:bw1_ui/view/utils/media_query/media_query.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          
          height: mediaQueryHeight(.04, context),
          width: mediaQueryWidth(.5, context),
        child: Row(children: [Icon(Icons.location_on)],),),
      ),
    );
  }
}
