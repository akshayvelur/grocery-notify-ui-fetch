import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class ViewallButton extends StatelessWidget {
  const ViewallButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 30,
      ),
      child: Center(
          child: Container(
        height: mediaQueryHeight(.05, context),
        width: mediaQueryWidth(.5, context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: commonGreen),
        child: Center(
            child: Text(
          "View all stores",
          style: appStyle(whiteClr, size: 14, Fweight: 600),
        )),
      )),
    );
  }
}
