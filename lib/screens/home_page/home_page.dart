import 'package:bw1_ui/screens/Notification/notification.dart';
import 'package:bw1_ui/screens/home_page/widgets/black_card.dart';
import 'package:bw1_ui/screens/home_page/widgets/carosel_card.dart';
import 'package:bw1_ui/screens/home_page/widgets/head_lines.dart';
import 'package:bw1_ui/screens/home_page/widgets/home_appbar.dart';
import 'package:bw1_ui/screens/home_page/widgets/nearby_store_List.dart';
import 'package:bw1_ui/screens/home_page/widgets/refer_and_earn.dart';
import 'package:bw1_ui/screens/home_page/widgets/searchbar.dart';
import 'package:bw1_ui/screens/home_page/widgets/top_first.dart';
import 'package:bw1_ui/screens/home_page/widgets/trending_grid.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/media_query/media_query.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:bw1_ui/screens/utils/varriable/varriable.dart';
import 'package:bw1_ui/state_managemnt/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationPage(),
          ));
        }
        // TODO: implement listener
      },
      child: Scaffold(
        backgroundColor: whiteClr,
        appBar: const MainPageAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeSearchBar(),
              TopFirstHeadLine(),
              TopFirstGrid(),
              MoreText(),
              TopSecondHeadLine(),
              CaroselCard(),
              TrendingHeadline(),
              TrendingGrid(),
              CrazeHeadLine(),
              BlackCard(),
              ReferAndRarn(),
              NearbyStores(),
              NearbyStoreList(),
              Padding(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
