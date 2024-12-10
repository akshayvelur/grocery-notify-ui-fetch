
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/widgets.dart';

class ReferAndRarn extends StatelessWidget {
  const ReferAndRarn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: mediaQueryWidth(100, context),
        height: mediaQueryHeight(.11, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: commonGreen,
        ),
        child: Stack(
          children:[ Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Text(
                  "Refer & Earn",
                  style: poppinsHeadStyle(whiteClr,size: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Invite your friends & earn 15% off",
                  style: poppinsHeadStyle(whiteClr, size: 13,Fweight: 300),
                ),
              )
            ],
          ),Positioned(right: 34,child: Image.asset("assets/gift (1).png"))]
        ),
      ),
    );
  }
}
