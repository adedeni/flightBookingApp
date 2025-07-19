import 'package:flightbookingapp/class/ticket_view.dart';
import 'package:flightbookingapp/controllers/tickets_list_controller.dart';
import 'package:flightbookingapp/models/tickets_list_model.dart';
import 'package:flightbookingapp/shimmer/app_info_list.dart';
import 'package:flightbookingapp/shimmer/local_ticket_view.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/column_layout.dart';
import 'package:flightbookingapp/widgets/layout_builder.dart';
import 'package:flightbookingapp/widgets/top_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// ignore: depend_on_referenced_packages
import 'package:barcode_widget/barcode_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TicketScreen extends StatelessWidget {
  final TicketModel? ticket;
  final Map<String, dynamic> ? localticket;
  final bool? isColor;
  const TicketScreen({super.key, this.ticket, this.isColor, this.localticket});

  @override
  Widget build(BuildContext context) {
    AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(context, 20),
              vertical: AppLayout.getHeight(context, 20),
            ),
            children: [
              Gap(AppLayout.getHeight(context, 40)),
              Text(
                'Ticktets',
                style: Styles.headLineStyle1.copyWith(
                  fontSize: AppLayout.getWidth(context, 35),
                ),
              ),
              Gap(AppLayout.getHeight(context, 20)),
              const TopTabs(firstTab: 'Upcoming', secoondTab: 'Previous'),
              Gap(AppLayout.getHeight(context, 20)),
              GetBuilder<TicketsListController>(
                builder: (ticketView) {
                  return ticketView.isLoaded
                      ? Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getHeight(context, 15),
                        ),
                        child: TicketView(
                          ticket: ticketView.currentTicket,
                          isColor: true,
                        ),
                      )
                      : Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getHeight(context, 15),
                        ),
                        child: LocalTicketView(
                          localticket: localTicketList[0],
                          isColor: true,
                        ),
                      );
                },
              ),
              SizedBox(height: AppLayout.getHeight(context, 1)),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 15),
                  vertical: AppLayout.getHeight(context, 20),
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 16),
                ),
                child: Column(
                  children: [
                    GetBuilder<TicketsListController>(
                      builder: (ticketView) {
                        return ticketView.isLoaded
                            ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppColumnLayout(
                                  firstText:
                                      ticketView.currentTicket.passenger!,
                                  secondtText: "Passenger",
                                  alignment: CrossAxisAlignment.start,
                                ),
                                AppColumnLayout(
                                  firstText:
                                      ticketView.currentTicket.passportNumber!,
                                  secondtText: "Passport",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            )
                            :Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppColumnLayout(
                                  firstText:
                                      'adedeni',
                                  secondtText: "Passenger",
                                  alignment: CrossAxisAlignment.start,
                                ),
                                AppColumnLayout(
                                  firstText:
                                      'A9743828',
                                  secondtText: "Passport",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            );
                      },
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilder(
                      isColor: true,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    GetBuilder<TicketsListController>(
                      builder: (ticketView) {
                        return ticketView.isLoaded
                            ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppColumnLayout(
                                  firstText: ticketView.currentTicket.eTickets!,
                                  secondtText: "Number of E-ticktes",
                                  alignment: CrossAxisAlignment.start,
                                ),
                                AppColumnLayout(
                                  firstText:
                                      ticketView.currentTicket.bookingCode!,
                                  secondtText: "Booking code",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            )
                            : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppColumnLayout(
                                  firstText: '9862 12 1495',
                                  secondtText: "Number of E-ticktes",
                                  alignment: CrossAxisAlignment.start,
                                ),
                                AppColumnLayout(
                                  firstText:
                                      'UI 9196',
                                  secondtText: "Booking code",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            );
                      },
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilder(
                      isColor: true,
                      sections: 15,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    GetBuilder<TicketsListController>(
                      builder: (ticketView) {
                        return ticketView.isLoaded
                            ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/visa.png",
                                          scale: 111,
                                        ),
                                        Text(
                                          " *** 1997",
                                          style: Styles.headLineStyle3.copyWith(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(AppLayout.getHeight(context, 5)),
                                    Text(
                                      "Payment method",
                                      style: Styles.headLineStyle4.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                AppColumnLayout(
                                  firstText:
                                      "₦${ticketView.currentTicket.flightPrice!}",
                                  secondtText: "Price",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            )
                            : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/visa.png",
                                          scale: 111,
                                        ),
                                        Text(
                                          " *** 1997",
                                          style: Styles.headLineStyle3.copyWith(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(AppLayout.getHeight(context, 5)),
                                    Text(
                                      "Payment method",
                                      style: Styles.headLineStyle4.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                AppColumnLayout(
                                  firstText:
                                      "₦6,999.99",
                                  secondtText: "Price",
                                  alignment: CrossAxisAlignment.end,
                                ),
                              ],
                            );
                      },
                    ),
                    const SizedBox(height: 1),
                    //Gap(AppLayout.getHeight(context, 20)),
                    // const AppLayoutBuilder(
                    //   isColor: true,
                    //   sections: 15,
                    //   width: 5,
                    // ),
                  ],
                ),
              ),
              //barcode
              const SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(context, 16),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(context, 20),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      AppLayout.getHeight(context, 21),
                    ),
                    bottomLeft: Radius.circular(
                      AppLayout.getHeight(context, 21),
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(context, 15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppLayout.getHeight(context, 15),
                    ),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      color: Styles.textColor,
                      width: double.infinity,
                      drawText: false,
                      height: AppLayout.getHeight(context, 70),
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(context, 20)),
              GetBuilder<TicketsListController>(
                builder: (ticketView) {
                  return ticketView.isLoaded
                      ? Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getHeight(context, 15),
                        ),
                        child: TicketView(
                          ticket: ticketView.nextTicket,
                          isColor: null,
                        ),
                      )
                      : Container(
                        padding: EdgeInsets.only(
                          left: AppLayout.getHeight(context, 15),
                        ),
                        child: LocalTicketView(
                          localticket: localTicketList[1],
                          isColor: null,
                        ),
                      );
                },
              ),
            ],
          ),

          Positioned(
            left: AppLayout.getWidth(context, 25),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(context, 3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: AppLayout.getWidth(context, 2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(context, 25),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getWidth(context, 3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: AppLayout.getWidth(context, 2),
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
