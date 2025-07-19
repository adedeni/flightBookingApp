import 'package:flightbookingapp/controllers/flight_distance_controller.dart';
import 'package:flightbookingapp/controllers/tickets_list_controller.dart';
import 'package:flightbookingapp/models/flight_distance_model.dart';
import 'package:flightbookingapp/models/tickets_list_model.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/column_layout.dart';
import 'package:flightbookingapp/widgets/layout_builder.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  final TicketModel? ticket;
  final FlightModel? flight;
  const ProfileScreen({super.key, this.flight, this.ticket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(context, 86),
                width: AppLayout.getWidth(context, 86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(context, 10),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getWidth(context, 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1.copyWith(
                      fontSize: AppLayout.getHeight(context, 26),
                    ),
                  ),
                  Gap(AppLayout.getHeight(context, 2)),
                  GetBuilder<TicketsListController>(
                    builder: (ticketView) {
                      return ticketView.isLoaded
                          ? Text(
                            ticketView.currentTicket.to!.name!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                          : Text("Lagos");
                    },
                  ),
                  Gap(AppLayout.getHeight(context, 8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppLayout.getHeight(context, 100),
                      ),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(context, 5),
                      vertical: AppLayout.getHeight(context, 3),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            AppLayout.getWidth(context, 3),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                        Text(
                          "Premium status",
                          style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(AppLayout.getHeight(context, 5)),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      /*print("tapped");*/
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(context, 8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(context, 90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(context, 18),
                  ),
                ),
              ),
              Positioned(
                top: -40,
                right: -30,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getWidth(context, 30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: AppLayout.getHeight(context, 18),
                      color: Color(0xFF264CD2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 15),
                  vertical: AppLayout.getHeight(context, 10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getWidth(context, 12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: AppLayout.getHeight(context, 18),
                          ),
                        ),
                        Text(
                          "You have 95 flights this month",
                          style: Styles.headLineStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withAlpha((255 * 0.8).toInt()),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeight(context, 20)),
          Text(
            "Accumulated distance",
            style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(context, 15),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppLayout.getWidth(context, 18),
              ),
              color: Styles.backgroundColor,
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
                Gap(AppLayout.getHeight(context, 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GetBuilder<FlightDistanceController>(
                      builder: (flightDistance) {
                        return flightDistance.isLoaded
                            ? Text(
                              (flightDistance.flightDistance!.ufitFly!.distance! + flightDistance.flightDistance!.airPeace!.distance! + flightDistance.flightDistance!.valueJets!.distance!).toString(),
                              style: TextStyle(
                                fontSize: 40,
                                color: Styles.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                            : Text(
                              "015897",
                              style: TextStyle(
                                fontSize: 40,
                                color: Styles.textColor,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                      },
                    ),
                    Gap(AppLayout.getHeight(context, 5)),
                    Container(
                      margin: EdgeInsets.only(
                        top: AppLayout.getHeight(context, 16),
                      ),
                      child: Text(
                        "Miles",
                        style: Styles.headLineStyle4.copyWith(
                          fontSize: AppLayout.getHeight(context, 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Distance covered",
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: AppLayout.getHeight(context, 16),
                      ),
                    ),
                    Text(
                      DateFormat("dd MMMM yyyy").format(DateTime.now()),
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: AppLayout.getHeight(context, 16),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 5)),
                Divider(color: Colors.grey.shade300),
                GetBuilder<FlightDistanceController>(
                  builder: (flightDistance) {
                    return flightDistance.isLoaded
                        ? Row(
                          children: [
                            AppColumnLayout(
                              firstText:
                                  flightDistance
                                      .flightDistance!
                                      .airPeace!
                                      .distance
                                      .toString(),
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "AirPeace",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        )
                        : Row(
                          children: [
                            AppColumnLayout(
                              firstText: "24626",
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "AirPeace",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        );
                  },
                ),

                Gap(AppLayout.getHeight(context, 15)),
                AppLayoutBuilder(isColor: true, sections: 12),
                GetBuilder<FlightDistanceController>(
                  builder: (flightDistance) {
                    return flightDistance.isLoaded
                        ? Row(
                          children: [
                            AppColumnLayout(
                              firstText:
                                  flightDistance
                                      .flightDistance!
                                      .valueJets!
                                      .distance
                                      .toString(),
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "ValueJets",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        )
                        : Row(
                          children: [
                            AppColumnLayout(
                              firstText: "24626",
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "ValueJets",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        );
                  },
                ),
                Gap(AppLayout.getHeight(context, 15)),
                AppLayoutBuilder(isColor: true, sections: 12),
                GetBuilder<FlightDistanceController>(
                  builder: (flightDistance) {
                    return flightDistance.isLoaded
                        ? Row(
                          children: [
                            AppColumnLayout(
                              firstText:
                                  flightDistance
                                      .flightDistance!
                                      .ufitFly!
                                      .distance
                                      .toString(),
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "UfitFly",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        )
                        : Row(
                          children: [
                            AppColumnLayout(
                              firstText: "24626",
                              secondtText: "Miles",
                              alignment: CrossAxisAlignment.start,
                            ),
                            Spacer(),
                            AppColumnLayout(
                              secondtText: "Flight",
                              firstText: "UfitFly",

                              alignment: CrossAxisAlignment.end,
                            ),
                          ],
                        );
                  },
                ),
                Gap(AppLayout.getHeight(context, 15)),
                AppLayoutBuilder(isColor: true, sections: 12),
              ],
            ),
          ),

          Gap(AppLayout.getHeight(context, 25)),
          InkWell(
            onTap: () {
              // print("tapped");
            },
            child: Center(
              child: Text(
                "How to get more rewards",
                style: Styles.textStyle.copyWith(
                  color: Styles.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(context, 10)),
        ],
      ),
    );
  }
}
