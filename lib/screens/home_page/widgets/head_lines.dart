
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class TopFirstHeadLine extends StatelessWidget {
  const TopFirstHeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 15),
      child: Text("What would you like to do today?",style: appStyle(blackClr,size: 19,Fweight: 600),),
    );
  }
}

class TopSecondHeadLine extends StatelessWidget {
  const TopSecondHeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text("Top picks for you",style: appStyle(blackClr,size: 19,Fweight: 600),),
    );
  }
}

class MoreText extends StatelessWidget {
  const MoreText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("More",style: appStyle(commonGreen,size: 15,Fweight: 650),),
          Icon(
            Icons.keyboard_arrow_down,
            color: commonGreen,
          )
        ],
      ),
    );
  }
}

class TrendingHeadline extends StatelessWidget {
  const TrendingHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Trending",style: appStyle(blackClr,Fweight: 600,size: 19)),
        Text("See all",style: appStyle(commonGreen,Fweight: 600,size: 16))],
      ),
    );
  }
}
class CrazeHeadLine extends StatelessWidget {
  const CrazeHeadLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
      child: Text("Craze deals",style: appStyle(blackClr,Fweight: 600,size: 19),),
    );
  }
}

class NearbyStores extends StatelessWidget {
  const NearbyStores({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Nearby Stores",style: appStyle(blackClr,Fweight: 600,size: 19)),
        Text("See all",style: appStyle(commonGreen,Fweight: 600,size: 16))],
      ),
    );
  }
}