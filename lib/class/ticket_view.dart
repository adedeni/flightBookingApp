import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;

  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.85,
      margin: EdgeInsets.only(right: AppLayout.getWidth(context, 16)),
      child: Column(
        mainAxisSize: MainAxisSize.min, // ✅ allows dynamic height
        children: [
          // Blue part of the ticket
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF526799),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                topRight: Radius.circular(AppLayout.getHeight(context, 21)),
              ),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(context, 16)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const ThickContainer(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(context, 24),
                            child: LayoutBuilder(
                              builder: (
                                BuildContext context,
                                BoxConstraints constraints,
                              ) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const ThickContainer(),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style: Styles.headLineStyle3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 5)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(context, 100),
                      child: Text(
                        ticket['from']['name'],
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: Styles.headLineStyle4.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(context, 100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Orange dashed line
          Container(
            color: Styles.orangeColor,
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(context, 20),
                  width: AppLayout.getWidth(context, 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Styles.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          AppLayout.getHeight(context, 10),
                        ),
                        bottomRight: Radius.circular(
                          AppLayout.getHeight(context, 10),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(context, 12)),
                    child: LayoutBuilder(
                      builder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(context, 20),
                  width: AppLayout.getWidth(context, 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Styles.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          AppLayout.getHeight(context, 10),
                        ),
                        bottomLeft: Radius.circular(
                          AppLayout.getHeight(context, 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Orange bottom info section
          Container(
            decoration: BoxDecoration(
              color: Styles.orangeColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppLayout.getHeight(context, 21)),
                bottomRight: Radius.circular(AppLayout.getHeight(context, 21)),
              ),
            ),
            padding: EdgeInsets.fromLTRB(
              AppLayout.getWidth(context, 16),
              AppLayout.getHeight(context, 10),
              AppLayout.getWidth(context, 16),
              AppLayout.getHeight(context, 16),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        ticket['date'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ticket['departure_time'],
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ticket['number'].toString(),
                        style: Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 5)),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Date",
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Departure time",
                          textAlign: TextAlign.center,
                          style: Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Text(
                        "Number",
                        textAlign: TextAlign.end,
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
