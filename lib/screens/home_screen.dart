import 'package:flightbookingapp/class/hotel_view.dart';
import 'package:flightbookingapp/class/ticket_view.dart';
import 'package:flightbookingapp/controllers/hotel_list_controller.dart';
import 'package:flightbookingapp/controllers/tickets_list_controller.dart';
import 'package:flightbookingapp/utils/app_info_list.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/double_header_text.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(context, 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome", style: Styles.headLineStyle3),
                        Gap(AppLayout.getHeight(context, 5)),
                        Text("Book Tickets", style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(context, 50),
                      height: AppLayout.getHeight(context, 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(context, 10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/image.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 25)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(context, 10),
                    ),
                    color: Color(0xFFF4F6FD),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(context, 12),
                    vertical: AppLayout.getHeight(context, 12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0Xffbfc205),
                      ),
                      Text("Search", style: Styles.headLineStyle4),
                    ],
                  ),
                ),
                Gap(40),
                DoubleHeaderText(
                  bigText: "Upcoming Flight",
                  smallText: "View all",
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(context, 15)),
          GetBuilder<TicketsListController>(
            builder: (ticketView) {
              return ticketView.isLoaded
                  ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(context, 20),
                    ),
                    child: Row(
                      children:
                      // ticketList
                      //     .map(
                      //       (singleTicket) =>
                      //           TicketView(ticket: singleTicket),
                      //     )
                      //     .toList(),
                      List.generate(ticketView.ticketList.length, (index) {
                        return TicketView(ticket: ticketView.ticketList[index]);
                      }),
                    ),
                  )
                  : const CircularProgressIndicator(color: Colors.orange);
            },
          ),
          Gap(AppLayout.getHeight(context, 15)),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(context, 20),
            ),
            child: DoubleHeaderText(bigText: "Hotels", smallText: "View all"),
          ),
          Gap(AppLayout.getHeight(context, 15)),

          GetBuilder<HotelListController>(
            builder: (hotelView) {
              return hotelView.isLoaded
                  ? SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    padding: EdgeInsets.only(
                      left: AppLayout.getWidth(context, 20),
                    ),
                    child: Row(
                      //children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList()
                      children: List.generate(hotelView.hotelList.length, (
                        index,
                      ) {
                        return HotelView(hotel: hotelView.hotelList[index]);
                      }),
                    ),
                  )
                  : const CircularProgressIndicator(color: Colors.orange);
            },
          ),
          Gap(AppLayout.getHeight(context, 10)),
        ],
      ),
    );
  }
}
