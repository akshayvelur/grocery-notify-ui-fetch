import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class BlackCard extends StatelessWidget {
  const BlackCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: mediaQueryHeight(.20, context),
        width: double.infinity,
        child: ListView.builder(padding: EdgeInsets.all(0),
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8,top: 8,bottom: 8),
              child: Container(
                height: mediaQueryHeight(.15, context),
                width: mediaQueryWidth(.8, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blackClr),
                child: Row(
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 29, top: 25),
                            child: Container(
                                width: mediaQueryWidth(.53, context),
                                child: Text(
                                  "Customer favourite top supermarkets",
                                  style: poppinsHeadStyle(whiteClr,
                                      Fweight: 600, size: 18),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 16),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    "Explore",
                                    style: commenHeadStyle(checkClr,
                                        Fweight: 400, size: 14),
                                  ),SizedBox(width: mediaQueryWidth(.01, context),),Icon(Icons.arrow_forward,color: checkClr,size: 17,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          left: 195,
                          bottom: 1,
                          child: Image.asset(
                            "assets/This Produce Delivery Service Wants You to Start Eating the _Ugly_ Vegetables Too 1.png",
                            scale: 1.1,
                          ))
                    ])
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}