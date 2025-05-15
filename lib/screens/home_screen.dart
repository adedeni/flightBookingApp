import 'package:flightbookingapp/screens/ticket_view.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
             children: [
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                       Text(
                    "Welcome", style: Styles.headLineStyle3,
                    ),
                    Gap(5),
                     Text(
                    "Book Tickets" , style: Styles.headLineStyle1,
                    ),
                    ]
                    
                   ),
                   Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/image.png"
                          )
                      )
                    ),
                   )
                ],
              ),
              Gap(25),
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
                      "Search",
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
             Gap(40),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upcoming Flights", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    //print("this works");
                  },
                  child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
             )
             ],
            ),
          ),
          Gap(15),
          TicketView(),
        ],
      )
    );
  }
}