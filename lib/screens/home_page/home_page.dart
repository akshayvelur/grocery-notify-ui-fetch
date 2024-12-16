import 'package:bw1_ui/screens/home_page/widgets/black_card.dart';
import 'package:bw1_ui/screens/home_page/widgets/carosel_card.dart';
import 'package:bw1_ui/screens/home_page/widgets/head_lines.dart';
import 'package:bw1_ui/screens/home_page/widgets/home_appbar.dart';
import 'package:bw1_ui/screens/home_page/widgets/nearby_store_List.dart';
import 'package:bw1_ui/screens/home_page/widgets/refer_and_earn.dart';
import 'package:bw1_ui/screens/home_page/widgets/searchbar.dart';
import 'package:bw1_ui/screens/home_page/widgets/top_first.dart';
import 'package:bw1_ui/screens/home_page/widgets/trending_grid.dart';
import 'package:bw1_ui/screens/home_page/widgets/viewall_button.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/state_managemnt/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        // ignore: unnecessary_type_check
        if (state is HomeState) {
          Navigator.pushNamed(context,'/notification',arguments:'Hello from Home Screen!');
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
              // Home page
              HomeSearchBar(),
              // First head line
              TopFirstHeadLine(),
              //Main Gridview
              TopFirstGrid(),
              // More head line
              MoreText(),
              // "Top picks for you" head line
              TopSecondHeadLine(),
              // "Top pick for you"slider card
              CaroselCard(),
              // Trending head line
              TrendingHeadline(),
              // Trending grid view
              TrendingGrid(), 
              // Craze deals head line
              CrazeHeadLine(),
             // Craze deals card
              BlackCard(),
              // Refer and earn card
              ReferAndRarn(),
              // Nearby store head line 
              NearbyStores(),
              // Nearby store card
              NearbyStoreList(),
              // Viewall button 
              ViewallButton()
            ],
          ),
        ),
      ),
    );
  }
}

