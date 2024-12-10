import 'package:bw1_ui/screens/bottom_navigation/bottom_navigation.dart';
import 'package:bw1_ui/state_managemnt/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/bloc_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>HomeBloc() ,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bw1',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: BottomNavigation()),
    );
  }
}
