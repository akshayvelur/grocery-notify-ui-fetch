// ignore_for_file: must_be_immutable

import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:bw1_ui/screens/utils/varriable/varriable.dart';
import 'package:flutter/material.dart';

class TrendingGrid extends StatelessWidget {
  TrendingGrid({
    super.key,
  });
  Variable variable = Variable();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQueryHeight(.27, context),
      width: mediaQueryWidth(100, context),
      child: GridView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 7,
            mainAxisSpacing: 8,
            mainAxisExtent: 250,
            crossAxisCount: 2),
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: mediaQueryHeight(.01, context),
                width: mediaQueryWidth(.10, context),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/Group 101.png",
                      fit: BoxFit.contain,
                      width: 87,
                      height: 87,
                    ),SizedBox(width: mediaQueryWidth(.01, context),),
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Mithas Bhandar",style:appStyle(blackClr,size: 16,Fweight: 600) ,),
                        SizedBox(height: mediaQueryHeight(.004, context),),Text("Sweets, North Indian",style:appStyle(blackClr,size: 11,Fweight: 500)),
                       SizedBox(height: mediaQueryHeight(.004, context),), Text("(store location)  |  6.4 kms",style:appStyle(blackClr,size: 11,Fweight: 500)),
                        SizedBox(height: mediaQueryHeight(.004, context),), Text("★  4.1  |  45 mins",style:appStyle(blackClr,size: 13   ,Fweight: 500))],),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
