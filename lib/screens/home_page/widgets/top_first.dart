// ignore_for_file: must_be_immutable

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
        itemCount: variable.homeGrind.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 8,
            mainAxisExtent: 122,
            crossAxisCount: 4),
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: whiteClr,
                  child: Container(
                      height: mediaQueryHeight(.08, context),
                      width: mediaQueryWidth(.34, context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children:[ 
                              Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child:offer[index]? Container(
                              height: mediaQueryHeight(0.019, context),
                              width: mediaQueryWidth(.12, context),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: purpleClr),
                              child: Center(child: Text("10% Off",style: appStyle(whiteClr,size: 8,Fweight: 500),))):SizedBox(),
                            ) , 
                             Positioned(
                        child:Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Center(
                                  child: Container(height: 50,width: 50,
                                    child: Image.asset(
                                                                  variable.homeGrind.values.elementAt(index),
                                                                  scale: 1,
                                                                ),
                                  )),
                        ))]
                          ),
                        ],
                      )),
                ),
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
          );
        },
      ),
    );
  }
}




// ignore_for_file: must_be_immutable

// import 'package:bw1_ui/screens/utils/colors/colors.dart';
// import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
// import 'package:bw1_ui/screens/utils/style/font.dart';
// import 'package:bw1_ui/screens/utils/varriable/varriable.dart';
// import 'package:flutter/material.dart';

// class TopFirstGrid extends StatelessWidget {
//    TopFirstGrid({
//     super.key,
  
//   });
//  Variable variable = Variable();


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: mediaQueryHeight(.30, context),
//       width: mediaQueryWidth(100, context),
//       child: GridView.builder(
//         itemCount: variable.homeGrind.length,physics: NeverScrollableScrollPhysics(),
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisSpacing: 28,
//             mainAxisSpacing: 8,
//             mainAxisExtent: 120,
//             crossAxisCount: 4),
//         padding: EdgeInsets.all(15),
//         itemBuilder: (context, index) {
//           return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                               height: mediaQueryHeight(.08, context),
//                               width: mediaQueryWidth(.29, context),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: whiteClr,
//                                 boxShadow: [
//                                   BoxShadow(color: offWhiteClr, blurRadius: 2)
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Center(
//                                       child: Image.asset(
//                                     variable.homeGrind.values.elementAt(index),
//                                     scale: 1.5,
//                                   )),
//                                 ],
//                               )),
//                           SizedBox(
//                             height: mediaQueryHeight(.01, context),
//                           ),
//                           Center(
//                             child: Text(
//                               variable.homeGrind.keys.elementAt(index),
//                               maxLines: 2,
//                               textAlign: TextAlign.center,
//                               style: appStyle(blackClr, size: 13, Fweight: 500),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//         },
//       ),
//     );
//   }
// }
