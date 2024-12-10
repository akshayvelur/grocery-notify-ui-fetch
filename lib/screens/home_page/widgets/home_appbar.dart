
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class MainPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: whiteClr,
      appBar: AppBar(backgroundColor: whiteClr,
        title: Container(
          height: mediaQueryHeight(.04, context),
          width: mediaQueryWidth(.6, context),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: commonGreen,
              ),
              SizedBox(
                width: mediaQueryWidth(.02, context),
              ),
              Text(
                "ABCD, New Delhi",
                style: commenHeadStyle(blackClr, size: 15, Fweight: 450),
              ) , Icon(
                Icons.keyboard_arrow_down_rounded,
                color: commonGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight);
}
