import 'package:flightbookingapp/class/ticket_view.dart';
import 'package:flightbookingapp/utils/app_info_list.dart';
import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/column_layout.dart';
import 'package:flightbookingapp/widgets/layout_builder.dart';
import 'package:flightbookingapp/widgets/top_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

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
              Container(
                padding: EdgeInsets.only(
                  left: AppLayout.getHeight(context, 15),
                ),
                child: TicketView(ticket: ticketList[0], isColor: true),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "adedeni",
                          secondtText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: "9036 176161",
                          secondtText: "Passport",
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const AppLayoutBuilder(isColor: true, sections: 15),
                    Gap(AppLayout.getHeight(context, 20))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
