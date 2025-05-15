import 'package:flightbookingapp/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
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
          Gap(100),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
             children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD)
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(  
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0Xffbfc205)),
                    Text(
                      "Searching..... Adedeni",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
             ],
            ),
          ),
        ],
      )
    );
  }
}