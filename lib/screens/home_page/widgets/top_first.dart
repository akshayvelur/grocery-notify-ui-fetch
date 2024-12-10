
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:bw1_ui/screens/utils/varriable/varriable.dart';
import 'package:flutter/material.dart';

class TopFirstGrid extends StatelessWidget {
   TopFirstGrid({
    super.key,
  
  });
 Variable variable = Variable();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaQueryHeight(.30, context),
      width: mediaQueryWidth(100, context),
      child: GridView.builder(
        itemCount: variable.homeGrind.length,physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 28,
            mainAxisSpacing: 8,
            mainAxisExtent: 120,
            crossAxisCount: 4),
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: mediaQueryHeight(.08, context),
                              width: mediaQueryWidth(.29, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: whiteClr,
                                boxShadow: [
                                  BoxShadow(color: offWhiteClr, blurRadius: 2)
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    variable.homeGrind.values.elementAt(index),
                                    scale: 1.5,
                                  )),
                                ],
                              )),
                          SizedBox(
                            height: mediaQueryHeight(.01, context),
                          ),
                          Center(
                            child: Text(
                              variable.homeGrind.keys.elementAt(index),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: appStyle(blackClr, size: 13, Fweight: 500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
        },
      ),
    );
  }
}
