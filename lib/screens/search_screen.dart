import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/double_header_text.dart';
import 'package:flightbookingapp/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(
              fontSize: AppLayout.getWidth(context, 35),
            ),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(context, 50),
                ),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  //airline tickets
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(AppLayout.getHeight(context, 50)),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text("Airline Ticktes")),
                  ),
                  //hotels
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(context, 7),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppLayout.getHeight(context, 50),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(context, 25)),
          const IconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          Gap(AppLayout.getHeight(context, 20)),
          const IconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(context, 25)),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(context, 15),
              horizontal: AppLayout.getWidth(context, 15),
            ),
            decoration: BoxDecoration(
              color: Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(context, 10),
              ),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(context, 40)),
          const DoubleHeaderText(
            bigText: "Upcoming Flights",
            smallText: "View all",
          ),
          Gap(AppLayout.getHeight(context, 15)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(context, 400),
                width: size.width * .42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 15),
                  vertical: AppLayout.getHeight(context, 15),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(context, 20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 12),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: const AssetImage(
                            'assets/images/flightaisle.png',
                          ),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss the chance.",
                      style: Styles.headLineStyle4.copyWith(
                        color: Colors.black,
                        fontSize: AppLayout.getHeight(context, 19),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                
              )
            ],
          ),
        ],
      ),
    );
  }
}
