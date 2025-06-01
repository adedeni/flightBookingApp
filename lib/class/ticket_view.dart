import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flightbookingapp/widgets/layout_builder.dart';
import 'package:flightbookingapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/get_utils.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(context, GetPlatform.isAndroid==true?185:187),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(context, 16)),
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            // Blue part of the ticket
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
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
                        style:isColor==null? Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(context, 24),
                             child: const AppLayoutBuilder( sections: 6, isColor: null,),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color:isColor==null? Colors.white: Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(isColor: true,),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:isColor==null? Styles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle3,
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
                          style:isColor==null? Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ):Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:isColor==null? Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle4,
                      ),
                      SizedBox( 
                        width: AppLayout.getWidth(context, 100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null? Styles.headLineStyle4.copyWith(
                            color: Colors.white,
                          ):Styles.headLineStyle4,
                        ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
        
            // Orange dashed line
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(context, 20),
                    width: AppLayout.getWidth(context, 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor==null? Styles.backgroundColor:Colors.white,
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
                              (index) =>  SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(color: isColor==null? Colors.white:Colors.grey.shade300),
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
                        color: isColor==null? Styles.backgroundColor:Colors.white,
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
                color: isColor==null? Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?(AppLayout.getHeight(context, 21)):0),
                  bottomRight: Radius.circular(isColor==null?(AppLayout.getHeight(context, 21)):0),
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
                          style:isColor==null? Styles.headLineStyle3.copyWith(
                            color: Colors.white, fontSize: AppLayout.getHeight(context, 14)
                          ):Styles.headLineStyle3.copyWith(
                          fontSize: AppLayout.getHeight(context, 14)
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          ticket['departure_time'],
                          style:isColor==null? Styles.headLineStyle3.copyWith(
                            color: Colors.white, fontSize: AppLayout.getHeight(context, 14)
                          ):Styles.headLineStyle3.copyWith(
                          fontSize: AppLayout.getHeight(context, 14)
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          ticket['number'].toString(),
                          style:isColor==null? Styles.headLineStyle3.copyWith(
                            color: Colors.white, fontSize: AppLayout.getHeight(context, 14)
                          ):Styles.headLineStyle3.copyWith(
                          fontSize: AppLayout.getHeight(context, 14)
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
                            color: isColor==null? Colors.white:Colors.grey.shade300, fontSize: AppLayout.getHeight(context, 14)
                          ),
                        ),
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Departure time",
                            textAlign: TextAlign.center,
                            style:isColor==null? Styles.headLineStyle4.copyWith(
                          color: Colors.white,
                        ):Styles.headLineStyle4,
                          ),
                        ),
                      ),
        
                      Expanded(
                        child: Text(
                          "Number",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(
                            color: isColor==null? Colors.white:Colors.grey.shade300, fontSize: AppLayout.getHeight(context, 14)
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
      ),
    );
  }
}
