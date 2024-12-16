import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class NearbyStoreList extends StatelessWidget {
  const NearbyStoreList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: mediaQueryHeight(.35, context),
        width: mediaQueryWidth(100, context),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                width: mediaQueryWidth(100, context),
                height: mediaQueryHeight(.16, context),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/Group 105.png"),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 8, bottom: 8, top: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Freshly Baker",
                                  style: appStyle(blackClr, Fweight: 500, size: 17),
                                ),SizedBox(height: mediaQueryHeight(.004, context),),
                                Text(
                                  "Sweets, North Indian",
                                  style: appStyle(blackClr, Fweight: 400, size: 13),
                                ),SizedBox(height: mediaQueryHeight(.004, context),),
                                Text(
                                  "Site No - 1  |  6.4 kms",
                                  style: appStyle(blackClr, Fweight: 400, size: 13),
                                ),SizedBox(height: mediaQueryHeight(.004, context),),
                                Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: myoff),
                                  width: mediaQueryWidth(.14, context),
                                  height: mediaQueryHeight(.018, context),
                               child: Center(child: Text("Top Store",style: appStyle(blackClr,size: 8),),),)
                              ]),
                        )
                      ,Padding(
                        padding: const EdgeInsets.only(left: 60,right: 8,top: 8,bottom: 8),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("★  4.1",style: appStyle(blackClr,size: 16),),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text("45 mins",style: appStyle(checkClr,Fweight: 500,size: 15),),
                            ),
                          ],
                        ),
                      ),],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left:90),
                    child: Divider(color: blackClr,height: mediaQueryHeight(.01, context),thickness: .15,),
                  ),Padding(
                    padding: const EdgeInsets.only(left:90),
                    child: Row(children: [Image.asset("assets/Vector (4).png"),Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text("Upto 10% OFF",style: appStyle(blackClr,size: 12,Fweight: 500),),
                    ),Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset("assets/grocery (1) 1.png"),
                      
                    ),Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text("3400+ items available",style: appStyle(blackClr,size: 12,Fweight: 500),),
                    )],
                    ),
                  )],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
