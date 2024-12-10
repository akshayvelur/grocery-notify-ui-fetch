
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget implements PreferredSizeWidget{
  const NotificationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: Colors.white, 
  elevation: 0.0,leading: Row(
      children: [SizedBox(width: mediaQueryHeight(.03, context),),
        InkWell(onTap: (){Navigator.pop(context);},child: Image.asset("assets/Group 181.png")),
      ],
    ),
      title: Text("Notifactions",style: bottomNavigationStyle(blackClr,Fweight: 600),),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
