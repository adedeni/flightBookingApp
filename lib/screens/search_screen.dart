import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/double_header_text.dart';
import 'package:flightbookingapp/widgets/icon_text.dart';
import 'package:flightbookingapp/widgets/top_tabs.dart';
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
          const TopTabs(firstTab: 'Airline Tickets', secoondTab: 'Hotels',),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(context, 425),
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
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * .44,
                        height: AppLayout.getHeight(context, 200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(context, 18),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(context, 15),
                          horizontal: AppLayout.getWidth(context, 15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor surver',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: AppLayout.getHeight(context, 21),
                              ),
                            ),
                            Gap(AppLayout.getHeight(context, 10)),
                            Text(
                              'Take the surver about our services and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: AppLayout.getHeight(context, 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -35,
                        child: Container(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(context, 30),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF189999),
                            width: AppLayout.getWidth(context, 18),
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                    )
                      ],
                  ),
                Gap(AppLayout.getHeight(context, 15)),
                Container(
                  width: size.width*.44,
                  height: AppLayout.getHeight(context, 210),
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 15), vertical: AppLayout.getHeight(context, 15)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 18)),
                    color: const Color(0xFFEC6545),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Take love', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontSize: AppLayout.getHeight(context, 21,), fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Gap(AppLayout.getHeight(context, 5)),
                      RichText(
                        text: TextSpan(
                          children: [
                             TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: AppLayout.getWidth(context, 20))
                              ),
                               TextSpan(
                              text: '😎',
                              style: TextStyle(fontSize: AppLayout.getHeight(context, 35))
                              ),
                               TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: AppLayout.getHeight(context, 20))
                              ),
                          ]
                      ),
                      )
                    ],
                  ),
                  )
                  ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
