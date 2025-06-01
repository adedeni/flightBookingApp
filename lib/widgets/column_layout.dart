import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondtText;
  const ColumnLayout({super.key, required this.firstText, required this.secondtText});

  @override
  Widget build(BuildContext context) {
    return  Column(
                          children: [
                            Text(firstText, style: Styles.headLineStyle3, textAlign: TextAlign.start,),
                            Gap(AppLayout.getHeight(context, 5)),
                            Text(secondtText, style: Styles.headLineStyle3,),

                          ],
                        );
  }
}