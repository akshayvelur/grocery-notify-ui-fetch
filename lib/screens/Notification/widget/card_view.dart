import 'package:bw1_ui/Services/date_time_calculation.dart';
import 'package:bw1_ui/model/notification_model.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({
    super.key,
    required this.getNotification,
  });

  final Future<List<MyNotification>> getNotification;

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.getNotification,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
        
          return Center(
            child: Text("Loading Error${snapshot.error}"),
          );
        }
        if (snapshot.hasData) {
          return Expanded(
            child: ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                
                final data = snapshot.data?[index];
                String time=dateTimeCalculation(data!.timestamp);
                return ListTile(
                  leading: SizedBox(
                    width: 50, 
                    height: 50, 
                    child: Image.asset("assets/${data!.image}"),
                    
                  ),
                  title: Text(data!.title,style: bottomNavigationStyle(blackClr,size: 17,Fweight: 600),
                  ),subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ Text(data!.body,style: bottomNavigationStyle(blackClr,size: 14),),
                      Text(time,style: bottomNavigationStyle(offWhiteClr,size: 12),),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {return Divider(height: mediaQueryHeight(.001, context),);},
            ),
          );
        } else {
          return Expanded(
            child: Center(
              child: CircularProgressIndicator(color: commonGreen,),
            ),
          );
        }
      },
    );
  }
}
