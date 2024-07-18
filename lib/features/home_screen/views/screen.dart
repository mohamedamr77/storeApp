import 'package:flutter/material.dart';
import 'package:storeamr/features/home_screen/views/widgets/appbar.dart';
import 'package:storeamr/features/home_screen/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
 static String id = "home screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'New Trend', onLeadingPressed: () {  }, onActionPressed: () {  },), // Use the custom app bar
      body: const HomeScreenBody(),
    );
  }
}
