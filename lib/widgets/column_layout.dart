import 'package:flightbookingapp/utils/app_layout.dart';
import 'package:flightbookingapp/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondtText;
  final bool? isColor;
  const AppColumnLayout({super.key, required this.firstText, required this.secondtText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
                          children: [
                            Text(firstText, style: Styles.headLineStyle3, textAlign: TextAlign.start,),
                            Gap(AppLayout.getHeight(context, 5)),
                            Text(secondtText, style: Styles.headLineStyle4,),

                          ],
                        );
  }
}