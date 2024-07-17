import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeamr/features/home_screen/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("New Trend",

        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
        ),
        leading: IconButton(
          onPressed: (){},
          color: Colors.black, icon: const Icon(Icons.arrow_back_ios_new,),
        ),
        actions: [
          IconButton(onPressed: (){}, icon:  const FaIcon(FontAwesomeIcons.cartPlus),)

        ],
      ),
      body: const HomeScreenBody(),
    );
  }
}
