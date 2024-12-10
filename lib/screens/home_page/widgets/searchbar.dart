
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:bw1_ui/state_managemnt/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: mediaQueryHeight(.05, context),
        width: mediaQueryWidth(100, context),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: lightWhite,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search for products/stores",
                      hintStyle: commenHeadStyle(offWhiteClr, size: 16),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 32,
                        color: commonGreen,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: mediaQueryWidth(.03, context),
              ),
              Stack(clipBehavior: Clip.none, children: [
              IconButton(onPressed: (){context.read<HomeBloc>().add(NavigateToNotificationEvent());}, icon: Icon(Icons.notifications_none_sharp,size: 33,color: redClr,)),
                Positioned(
                  right: 10,
                  top: 5,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: redClr,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "2",
                      style: commenHeadStyle(whiteClr, size: 11),
                    ),
                  ),
                )
              ]),
              SizedBox(
                width: mediaQueryWidth(.04, context),
              ),
              Image.asset(
                "assets/Vector (2).png",
                scale: 1.2,
              ),
              SizedBox(
                width: mediaQueryWidth(.02, context),
              ),
            ],
          ),
        ));
  }
}
