import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Gap(AppLayout.getHeight (context, 40)),
          Text("What are\nyou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 35),)
        ],
      ),
    );
 
  }
}