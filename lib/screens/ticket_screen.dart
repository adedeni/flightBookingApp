import 'package:flightbookingapp/screens/ticket_view.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Gap(150),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
             children: [
             TicketView()
             ],
            ),
          ),
        ],
      )
    );
  }
}