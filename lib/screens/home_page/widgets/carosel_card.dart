import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class CaroselCard extends StatelessWidget {
  const CaroselCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: mediaQueryHeight(.25, context),
        width: double.infinity,
        child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8,top: 8,bottom: 8),
              child: Container(
                height: mediaQueryHeight(.2, context),
                width: mediaQueryWidth(.91, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: commonGreen),
                child: Row(
                  children: [
                    Stack(clipBehavior: Clip.none, children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 29, top: 45),
                            child: Container(
                                width: mediaQueryWidth(.25, context),
                                child: Text(
                                  "DISCOUNT 25%ALL FRUITS",
                                  style: poppinsHeadStyle(whiteClr,
                                      Fweight: 600, size: 18),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 29, top: 10),
                            child: Container(
                              color: checkClr,
                              height: mediaQueryHeight(.03, context),
                              width: mediaQueryWidth(.32, context),
                              child: Center(
                                child: Text(
                                  "CHECK NOW",
                                  style: commenHeadStyle(whiteClr,
                                      Fweight: 500, size: 11),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          left: 135,
                          bottom: 1,
                          child: Image.asset(
                            "assets/Figma_Resources_2-removebg-preview 1.png",
                            scale: 1,
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
